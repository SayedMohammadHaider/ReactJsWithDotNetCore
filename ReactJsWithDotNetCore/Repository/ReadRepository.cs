using Dapper;
using ReactJsWithDotNetCore.Models;

namespace ReactJsWithDotNetCore.Repository
{
    public class ReadRepository : IReadRepository
    {
        private readonly DapperContext _context;
        public ReadRepository(DapperContext context)
        {
            _context = context;
        }

        public async Task<Student> GetStudent(Guid id)
        {
            var query = "SELECT * FROM Students where Id = @Id";
            using (var connection = _context.CreateConnection())
            {
                var student = await connection.QuerySingleOrDefaultAsync<Student>(query, new { id });
                return student;
            }
        }

        public async Task<IEnumerable<Student>> GetStudents()
        {
            var query = "SELECT * FROM Students";
            using (var connection = _context.CreateConnection())
            {
                var students = await connection.QueryAsync<Student>(query);
                return students.ToList();
            }
        }
    }
}
