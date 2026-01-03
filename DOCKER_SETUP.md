# Running data.developers.do with Docker

This Rails 4.0.3 application (10+ years old) uses Ruby 2.0.0 which is incompatible with modern macOS. We've set up Docker to run it properly.

## Prerequisites

- Docker Desktop installed and running
- Docker Compose (built into Docker Desktop)

## Setup

1. Start Docker Desktop if not already running
2. Build and start the containers:

```bash
docker compose up -d
```

3. Run database migrations and seeds:

```bash
docker compose exec web bundle exec rake db:create
docker compose exec web bundle exec rake db:migrate
docker compose exec web bundle exec rake db:seed
```

4. Access the application at http://localhost:3000

## API Endpoints

The app provides Dominican Republic reference data:

- Provinces: `http://localhost:3000/api/v1/provincias`
- Municipalities: `http://localhost:3000/api/v1/municipios`
- Cities: `http://localhost:3000/api/v1/ciudades`
- Holidays: `http://localhost:3000/api/v1/feriados`
- Companies (RNC): `http://localhost:3000/api/v1/empresas`

## Common Commands

- View logs: `docker compose logs -f web`
- Stop containers: `docker compose down`
- Rails console: `docker compose exec web bundle exec rails console`
- Run tests: `docker compose exec web bundle exec rake test`

## Notes

- The app uses an old Ubuntu 16.04 base image and Ruby 2.0.0-p648
- PostgreSQL 9.6 is used for the database
- All data is persisted in Docker volumes
