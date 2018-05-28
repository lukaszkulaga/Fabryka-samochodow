package BuildCars;

import BuildCars.Car;
import BuildCars.Engine;
import BuildCars.Tires;

public class RaceCarBuilder implements CarBuilder
{

	private Car car;

	public RaceCarBuilder()
	{
		this.car = new Car();
	}

	public void buildEngine()
	{
		Engine engine = new Engine();
		engine.setType("v8");

		car.setEngine(engine);
	}

	public void buildTires()
	{
		Tires tire = new Tires();
		tire.setDurability1(50);
		tire.setType("Slicks");

		car.setTires(tire);
	}

	public Car getCar()
	{
		return car;
	}

}
