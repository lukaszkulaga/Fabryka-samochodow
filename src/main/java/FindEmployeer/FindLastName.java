package FindEmployeer;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import javax.servlet.http.HttpServletRequest;

import domain.Em;

public class FindLastName
{
	private static EntityManagerFactory entityManagerFactory;
	private static EntityManager entityManager;

	public static void main(String[] args)
	{

		findEmployeer();

	}

	public static void findEmployeer()
	{
		entityManagerFactory = Persistence.createEntityManagerFactory("myDatabase");
		entityManager = entityManagerFactory.createEntityManager();

		TypedQuery<Em> query = entityManager.createQuery("select e from Em e  ", Em.class);

		List<Em> employees = query.getResultList();

		for (Em employee : employees)
		{

			if (employee.getLastName().equals("Dl"))
			{
				System.out.println(employee.getLastName());
				System.out.println(employee.getFirstName());
				System.out.println(employee.getSalary());
				System.out.println(employee.getLocality());
				System.out.println(employee.getStreet());
				System.out.println(employee.getStreetNumber());
				System.out.println(employee.getZipCode());

			}

		}

	}

}
