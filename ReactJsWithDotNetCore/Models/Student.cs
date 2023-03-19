namespace ReactJsWithDotNetCore.Models
{
    public class Student
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public bool IsActive { get; set; }
        public DateTime DateOfBirth { get; set; }
    }
}
