package co.grandcircus.hotelListing.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.hotelListing.entity.Hotel;

@Repository
@Transactional
public class HotelDao {
	
	@PersistenceContext
	private EntityManager em;

	public List<Hotel> findAll() {
		return em.createQuery("FROM Hotel", Hotel.class)
				.getResultList();
	}

	public List<Hotel> findByCity(String city) {
		return em.createQuery("FROM Hotel WHERE city = :c ORDER BY pricePerNight", Hotel.class)
				.setParameter("c", city)
				.getResultList();
		
	}
	

	
}
