package BuildCars;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Main
{

	public static void main(String[] args)
	{
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("myDatabase");
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		Engine engine = new Engine();
		Tires tires = new Tires();

		engine.setType("V1");
		tires.setDurability1(50);
		tires.setType("slick");
		
		
		

		entityManager.getTransaction().begin();
		entityManager.persist(engine);
		entityManager.persist(tires);
		entityManager.getTransaction().commit();

		entityManager.close();
		entityManagerFactory.close();
	}

}