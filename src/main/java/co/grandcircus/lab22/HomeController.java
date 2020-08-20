package co.grandcircus.lab22;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	 List<SpecialtyPizza> pizza;
	@RequestMapping("/")
	public String showHome(Model model) {
		Date date=new Date();
		pizza=new ArrayList<SpecialtyPizza>();
		pizza.add(new SpecialtyPizza("Anchovy-love's",15));
		pizza.add(new SpecialtyPizza("Paleo-pizza",12));
		pizza.add(new SpecialtyPizza("Dessert-pizza",20));
		model.addAttribute("pizza",pizza);
		model.addAttribute("date",date);
		
		return "index";
	}
	
@RequestMapping("/Anchovy-love's")
public String showAnchovy(Model model) {
	model.addAttribute("pizza",pizza);
	return "anchovy_lover";
}

@RequestMapping("/Paleo-pizza")
public String showPaleo(Model model) {
	model.addAttribute("pizza",pizza);
	return "paleo_pizza";
}

@RequestMapping("/Dessert-pizza")
public String showDessert(Model model) {
	model.addAttribute("pizza",pizza);
	return "dessert_pizza";
}

@RequestMapping("/build-pizza")
public String buildPizza(Model model) {

	List<String> toppingType= new ArrayList<String>();
    toppingType.add("Onion");
    toppingType.add("Tomato");
    toppingType.add("Green Bell Pepper");
    toppingType.add("Red Bell Pepper");
    toppingType.add("Cottage Cheese");
    toppingType.add("Olives");
    toppingType.add("Jalapeno");
    toppingType.add("Pineapple");
    toppingType.add("Zucchini");
    toppingType.add("Mushroom");
    model.addAttribute("diffTopping",toppingType);
	return "pizzabuilder";
}


@RequestMapping("/pizza-builder-confirm")
public String confirmPizza(Model model, @RequestParam("size") String sizeOfPizza, 
							@RequestParam("no_of_toppings") int toppings,
							@RequestParam("gluten") boolean glutenpizza,@RequestParam("instructions") String instructions) {
    double price=0;
    String glutenOrNot="";
    
	model.addAttribute("size",sizeOfPizza);
	model.addAttribute("no_of_toppings",toppings);
	
	if(glutenpizza)
		glutenOrNot="yes";
	else
		glutenOrNot="no";
	model.addAttribute("g",glutenOrNot);
	model.addAttribute("instructions",instructions);
	if(sizeOfPizza.equalsIgnoreCase("Small"))
		price=7+toppings*.5;
	if(sizeOfPizza.equalsIgnoreCase("Medium"))
		price=10+toppings*1.00;
	if(sizeOfPizza.equalsIgnoreCase("Large"))
		price=12+toppings*1.25;
	if(sizeOfPizza.equalsIgnoreCase("Xlarge"))
		price=14+toppings*1.50;
	if(glutenpizza)
		price=price+2;
	model.addAttribute("price", price);
		


	return "pizza_builder_result_page";
}
	
@RequestMapping("/review-form")
public String addReview() {
	return "review";
}


@RequestMapping("/review-confirmation")
public String showReviewConfirmation(Model model, @RequestParam("name") String personname, @RequestParam("comments") String comment,@RequestParam("rating") int rate) {

	model.addAttribute("name", personname);
	model.addAttribute("comments", comment);
	model.addAttribute("rating", rate);

	return "reviewConfirmation";
}

}
