using ReactJsWithDotNetCore.Models;

namespace ReactJsWithDotNetCore.Repository
{
    public interface IWriteRepository
    {
        public Task<int> CreateStudent(Student student);
    }
}
