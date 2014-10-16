  namespace :db do
  namespace :seed_live do


    desc "Actualizar base de datos RNC desde la DGII"
    task download_rnc: :environment do
      require 'net/http'
      require 'open-uri'
      require 'progressbar'
      
      # Download File
        url  = URI.parse 'http://dgii.gov.do/app/WebApps/Consultas/rnc/DGII_RNC.zip'
        #url      = URI.parse 'http://verynice.com.do/wp-content/uploads/2014/03/VeryNice-BanReservas-1028x480.jpg'
        file  = File.basename(url.path)
        pbar = nil
        calderon =  open(url,
            :content_length_proc => lambda {|t|
              if t && 0 < t
                pbar = ProgressBar.new('Downloading',t)
                pbar.file_transfer_mode
              end
            },
            :progress_proc => lambda {|s|
              pbar.set s if pbar
            }).read 
          File.open(file,"wb") {|f| f.write(calderon) }
          puts "File downloaded"
      # END downloading File #
      
      # Unzip #
      require 'zip' 
           
      Zip::File.open(file) do |zip_file|
        zip_file.each do |entry|
          puts "Extracting #{entry.name}"
          entry.extract(entry.name.split("/")[1])
          
        end
      end
      # END unzip#
      
  end
    
    
    
    desc "Update DB"
    task update: :environment do
      Empresa.delete_all
      puts "Tabla RNC limpiada"
      file = "DGII_RNC.txt"
    # Descargar ultima version de rnc empresas
        #Data
        File.open(file,  "r:windows-1251:utf-8") do |file|
        	i = 0
          puts "Actualización base de datos"
            file.each_line do |line|
            	i = i + 1
            	begin
        	      linea = line.split("|")
        	      rnc = linea[0]
        	      nombre = linea[1]
        	      
                Empresa.create(rnc: rnc, nombre: nombre)
        	      if (i % 1000 == 0)
        	      	print "Van #{i}\n"
        	      end
        		  
              if Rails.env.development?
        		      break if i == 5000
        		  end

            	rescue Exception => e
            		print e
            		print line
                break
            	end

            end
            # Cleaning     
            File.delete file
            puts "Archivo eliminado"
          end
      end
      #END update ##
      
    
  end
end