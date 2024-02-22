## Boilerplate API

Boilerplate API template includes all the common packages and setup used for API development in this Company.

### Development

- Copy `.env.example` to `.env` and update according to requirement.
- Create `serviceAccountKey.json` file for firebase admin sdk.
- To run `docker-compose up` (with default configuration will run at `5000` and adminer runs at `5001`)

#### Run Boilerplate CLI 🖥

- Run `docker-compose exec web sh`
- After running type `./__debug_bin cli` you will start cli application.
- Choose the commands to run afterwards.
- To run `docker-compose up` ( with default configuration will run at 5000 and adminer runs at 5001)
- To run with setting up pre-commit hook `make start` ( with default configuration will run at 5000 and adminer runs at 5001`)

#### Migration Commands 🛳

| Command                   | Desc                                                                            |
| --------------------------|---------------------------------------------------------------------------------|
| `make install`            | installs goalngci-lint and change the hooks config                              |
| `make start`              | setup pre-commit hook and runs the project                                      |
| `make run`                | runs the project                                                                |
| `make migrate-up`         | Migrates the database to the most recent version available                      |
| `make migrate-down`       | Undo a database migration                                                       |
| `make redo`               | Reapply the last migration                                                      |
| `make create`             | Create a new migration                                                          |
| `make migrate-status`     | Show migration status                                                           |

### Implemented Feature

- Dependency Injection (go-fx)
- Routing (gin web framework)
- Environment Files
- Logging (file saving on production) zap
- Middlewares (cors)
- Rate Limiting Middleware
- Middleware transaction
- Database Setup (mysql)
- Models Setup and Automigrate (gorm)
- Repositories
- Migration Runner Implementation
- Live code refresh

**For Debugging 🐞** Debugger runs at `5002`. Vs code configuration is at `.vscode/launch.json` which will attach debugger to remote application.
