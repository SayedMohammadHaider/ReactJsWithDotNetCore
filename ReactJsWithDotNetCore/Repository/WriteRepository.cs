using Dapper;
using ReactJsWithDotNetCore.Models;

namespace ReactJsWithDotNetCore.Repository
{
    public class WriteRepository : IWriteRepository
    {
        private readonly DapperContext _context;
        public WriteRepository(DapperContext context)
        {
            _context = context;
        }

        public async Task<int> CreateStudent(Student student)
        {
            var query = $"Insert Into Students (Id, Name, IsActive, DateOfBirth) values(@Id, @Name, @IsActive, @DateOfBirth)";
            Guid id = Guid.NewGuid();
            using (var connection = _context.CreateConnection())
            {
                var studentDetails = await connection.ExecuteAsync(query, new
                {
                    id,
                    student.Name,
                    student.IsActive,
                    student.DateOfBirth,
                });
                return studentDetails;
            }

            //throw new NotImplementedException();
        }
    }
}
