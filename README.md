# Student API

This is a simple Ruby on Rails API for managing student information.

## Environment Setup

Before running the project, make sure you have Ruby and Ruby on Rails installed on your machine. Additionally, you should have PostgreSQL configured and running. Follow the steps below to set up the environment:

1. Clone the repository:

   ```bash
   git clone https://github.com/wellrcosta/Api.Crud.RubyOnRails.git
   ```

2. Navigate to the project directory:

   ```bash
   cd Api.Crud.RubyOnRails
   ```

3. Install dependencies:

   ```bash
   bundle install
   ```

4. Configure the database in the `config/database.yml` file with your PostgreSQL credentials.

5. Run the database migrations:

   ```bash
   rails db:migrate
   ```

6. Start the Rails server:

   ```bash
   rails server
   ```

Now, the API will be running at `http://localhost:3000`.

## Using the API

The API provides the following endpoints:

- `GET /students`: List all students.
- `POST /students`: Create a new student.
- `GET /students/:id`: Retrieve information about a specific student.
- `PATCH /students/:id`: Update information for an existing student.
- `DELETE /students/:id`: Delete a student.
- `GET /students/cpf/:cpf`: Search for a student by CPF.

Be sure to check the `config/routes.rb` file for details on the endpoints and how to use them.

## Contribution

Contributions are welcome! If you encounter issues or have suggestions for improvement, feel free to open an [issue](https://github.com/wellrcosta/Api.Crud.RubyOnRails/issues) or submit a [pull request](https://github.com/wellrcosta/Api.Crud.RubyOnRails/pulls).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
