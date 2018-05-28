package BuildCars;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Tires
{
	@Id
	@GeneratedValue
	private long id;

	private String type;
	private int durability;

	public long getId()
	{
		return id;
	}

	public void setId(long id)
	{
		this.id = id;
	}

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public int getDurability()
	{
		return durability;
	}

	public void setDurability1(int durability)
	{
		this.durability = durability;
	}

	@Override
	public String toString()
	{
		return "Tires [type=" + type + ", durability=" + durability + "]";
	}

}
