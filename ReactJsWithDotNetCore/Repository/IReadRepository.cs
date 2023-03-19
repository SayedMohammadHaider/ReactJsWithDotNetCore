using ReactJsWithDotNetCore.Models;

namespace ReactJsWithDotNetCore.Repository
{
    public interface IReadRepository
    {
        public Task<IEnumerable<Student>> GetStudents();
        public Task<Student> GetStudent(Guid id);
    }
}
