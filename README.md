# data.developers.do

> **⚠️ Disclaimer: This project is no longer maintained**

This project was originally created over 10 years ago and has been upgraded from Rails 4.0.3 to Rails 7.1.6. The original maintainers are no longer active and this repository is **no longer maintained**. Use it at your own risk. For production use, consider creating a new project with modern frameworks and best practices.

API for accessing Dominican Republic reference data including provinces, municipalities, cities, holidays, and companies (RNC).

## Version

- Rails 7.1.6
- Ruby 3.3.10
- PostgreSQL 16

## Prerequisites

- Docker Desktop (installed and running)
- Docker Compose

## Quick Start

```bash
# Start the application
docker compose up -d

# The API will be available at http://localhost:3000
```

## Setup (First Run Only)

```bash
# Run database migrations
docker compose exec web bundle exec rails db:migrate

# Seed database with initial data
docker compose exec web bundle exec rails db:seed

# Restart the application
docker compose restart web
```

## API Endpoints

### Provinces

Get all provinces:
```bash
curl http://localhost:3000/api/v1/provincias
```

Get specific province:
```bash
curl http://localhost:3000/api/v1/provincias/1
```

Get municipalities for a province:
```bash
curl http://localhost:3000/api/v1/provincias/1/municipios
```

### Municipalities

Get all municipalities:
```bash
curl http://localhost:3000/api/v1/municipios
```

Get specific municipality:
```bash
curl http://localhost:3000/api/v1/municipios/1
```

### Cities

Get all cities:
```bash
curl http://localhost:3000/api/v1/ciudades
```

Get specific city:
```bash
curl http://localhost:3000/api/v1/ciudades/1
```

### Holidays

Get holidays for a specific year:
```bash
curl http://localhost:3000/api/v1/feriados/2024
```

### Companies (RNC)

Get company by RNC:
```bash
curl http://localhost:3000/api/v1/empresas/131001234
```

## Response Formats

All endpoints support multiple formats:

- **JSON** (default): Append `.json` to URL or use `Accept: application/json` header
- **XML**: Append `.xml` to URL or use `Accept: application/xml` header
- **CSV**: Append `.csv` to URL or use `Accept: text/csv` header
- **XLS** (Tab-separated): Append `.xls` to URL

Example:
```bash
# JSON
curl http://localhost:3000/api/v1/provincias

# CSV
curl http://localhost:3000/api/v1/provincias.csv

# XML
curl http://localhost:3000/api/v1/provincias.xml
```

## Web Interface

The main web interface is available at http://localhost:3000/

## Stopping the Application

```bash
# Stop the application
docker compose down

# Remove all containers and volumes
docker compose down -v
```

## Viewing Logs

```bash
# View all logs
docker compose logs

# Follow logs in real-time
docker compose logs -f

# View only web server logs
docker compose logs web -f
```

## Database

The application uses PostgreSQL 16 with the following configuration:

- Database: `data_developers_do_development`
- Host: `db` (Docker service name)
- Username: `postgres`
- Password: `postgres`

Database is persisted in a Docker volume for data persistence.

## Project Structure

```
app/
├── controllers/
│   ├── api/
│   │   ├── v1/
│   │   │   ├── provincias_controller.rb
│   │   │   ├── municipios_controller.rb
│   │   │   ├── ciudades_controller.rb
│   │   │   ├── feriados_controller.rb
│   │   │   └── empresas_controller.rb
│   │   └── base_controller.rb
│   ├── application_controller.rb
│   ├── main_controller.rb
│   └── servicio_controller.rb
├── models/
│   ├── provincia.rb
│   ├── municipio.rb
│   ├── ciudad.rb
│   ├── feriado.rb
│   ├── empresa.rb
│   ├── servicio.rb
│   └── detalle.rb
└── views/
    ├── layouts/
    └── main/
config/
├── application.rb
├── routes.rb
├── environments/
└── database.yml
db/
├── migrate/
├── seeds/
└── schema.rb
```

## Development

### Running Rails Console

```bash
docker compose exec web bundle exec rails console
```

### Creating a Migration

```bash
docker compose exec web bundle exec rails generate migration MigrationName
```

### Running Tests

```bash
docker compose exec web bundle exec rails test
```

### Updating Gem Dependencies

```bash
docker compose exec web bundle install
docker compose restart web
```

## Data Sources

This project provides reference data for the Dominican Republic:

- **Provinces**: 32 provinces including Distrito Nacional
- **Municipalities**: Over 400 municipalities across all provinces
- **Cities**: Cities and their municipalities
- **Holidays**: National holidays by year
- **Companies**: Companies by RNC (Registro Nacional del Contribuyente)

## License

Please refer to the original project repository for license information.

## Contributing

Please refer to the original project repository for contribution guidelines.
