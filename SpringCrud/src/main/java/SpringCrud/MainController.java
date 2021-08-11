package SpringCrud;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import SpringCrud.Dao.ProductDao;
import SpringCrud.Model.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/home")
	public String homeControl(Model m)
	{
		System.out.println("Home Controller Loaded..............");

		m.addAttribute("title", "Show Product");
		m.addAttribute("msg", "Welcome to Product App");
		
		List<Product> products = productDao.getProducts();
		m.addAttribute("product", products);
		
		return "home";
	}
	
	//Show add product form
	@RequestMapping("/addProduct")
	public String addProduct(Model m)
	{
		m.addAttribute("title", "Add Product");
		m.addAttribute("msg", "Fill the Product details");
		return "addProductForm";
	}
	
	//Handle add Product form
	@RequestMapping(value="/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) 
	{
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView rdv= new RedirectView();
		rdv.setUrl(request.getContextPath()+"/home");
		return rdv;
	}
	
	//Delete Handler
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request) 
	{
		this.productDao.deleteProduct(productId);
		RedirectView rdv = new RedirectView();
		rdv.setUrl(request.getContextPath()+"/home");
		return rdv;
		
	}
	
	//Update Product....................
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid, Model m)
	{
		Product product = this.productDao.getProduct(pid);
		m.addAttribute("product", product);
		m.addAttribute("msg", "Change The Product details");
		return "updateForm";
	}

}






