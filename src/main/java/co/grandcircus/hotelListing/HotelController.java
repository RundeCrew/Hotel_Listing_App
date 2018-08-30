package co.grandcircus.hotelListing;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.hotelListing.dao.HotelDao;
import co.grandcircus.hotelListing.entity.Hotel;

@Controller
public class HotelController {

	@Autowired
	HotelDao hotelDao;
	
	@RequestMapping("/list-hotels")
	public ModelAndView showHomePage() {
			List<Hotel> hotels = hotelDao.findAll();
			return new ModelAndView("list-hotels", "hotels", hotels);
		}

	@PostMapping("/list-by-city")
	public ModelAndView listByCity(String city)  {
		List<Hotel> hotels = hotelDao.findByCity(city);
		return new ModelAndView("list-by-city", "hotels", hotels);
	}
	
}
