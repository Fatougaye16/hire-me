namespace HireMe.Domain.Common;

public abstract class Entity
{
    public Guid Id { get; }

    protected Entity(Guid? id = null)
    {
        Id = id ?? Guid.NewGuid();
    }

    public override bool Equals(object? obj)
    {
        if(obj is null || GetType() != obj.GetType()) return false;
        
        return ((Entity)obj).Id == Id;
    }

    public override int GetHashCode()
    {
        return Id.GetHashCode();
    }
}