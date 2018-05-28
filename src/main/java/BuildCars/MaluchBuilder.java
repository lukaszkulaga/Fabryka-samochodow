package BuildCars;

import BuildCars.Car;
import BuildCars.Engine;
import BuildCars.Tires;

public class MaluchBuilder implements CarBuilder
{
	private Car car;

	public MaluchBuilder()
	{
		this.car = new Car();
	}

	public void buildTires()
	{
		Tires tire = new Tires();
		tire.setDurability1(100);
		tire.setType("Maluch Tires");

		car.setTires(tire);
	}

	public void buildEngine()
	{
		Engine engine = new Engine();
		engine.setType("Maluch Engine");

		car.setEngine(engine);
	}

	public Car getCar()
	{
		return car;
	}
}
