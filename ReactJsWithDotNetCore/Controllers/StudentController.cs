using Microsoft.AspNetCore.Mvc;
using ReactJsWithDotNetCore.Models;
using ReactJsWithDotNetCore.Repository;

namespace ReactJsWithDotNetCore.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class StudentController : ControllerBase
    {
        private readonly IReadRepository _readRepository;
        private readonly IWriteRepository _writeRepository;
        public StudentController(IReadRepository readRepository, IWriteRepository writeRepository)
        {
            _readRepository = readRepository;
            _writeRepository = writeRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetStudents()
        {
            try
            {
                var students = await _readRepository.GetStudents();
                return Ok(students);
            }
            catch (Exception ex)
            {
                //log error
                return StatusCode(500, ex.Message);
            }
        }

        [HttpGet]
        [Route("GetStudentById/{id}")]
        public async Task<IActionResult> GetStudentById(Guid id)
        {
            try
            {
                var students = await _readRepository.GetStudent(id);
                return Ok(students);
            }
            catch (Exception ex)
            {
                //log error
                return StatusCode(500, ex.Message);
            }
        }

        [HttpPost]
        public async Task<IActionResult> CreateStudent(Student student)
        {
            try
            {
                var students = await _writeRepository.CreateStudent(student);
                return Ok(students);
            }
            catch (Exception ex)
            {
                //log error
                return StatusCode(500, ex.Message);
            }
        }
    }
}
