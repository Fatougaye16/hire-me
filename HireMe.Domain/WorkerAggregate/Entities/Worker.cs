using HireMe.Domain.Common;

namespace HireMe.Domain.WorkerAggregate.Entities;

public class Worker : AggregateRoot
{
    public string FirstName { get; private set; }
    public string LastName { get; private set; }
    public string Email { get; private set; }
    public string PhoneNumber { get; private set; }
    public string Occupation { get; private set; }

    public Worker(string firstName, string lastName, string email, string phoneNumber, string occupation,
        Guid? id = null) : base(id)
    {
        FirstName = firstName;
        LastName = lastName;
        Email = email;
        PhoneNumber = phoneNumber;
        Occupation = occupation;
    }
    
    
}