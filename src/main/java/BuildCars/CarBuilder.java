package BuildCars;

import BuildCars.Car;

public interface CarBuilder
{

	public void buildTires();
	
	public void buildEngine();
	
	public Car getCar();
}
