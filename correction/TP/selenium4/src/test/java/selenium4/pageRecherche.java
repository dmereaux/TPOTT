package selenium4;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.time.Duration;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;



public class pageRecherche {

	@FindBy(how = How.CSS,using = ".col-lg-5 > p" )
	private WebElement resultat;
	
	@FindBy(how = How.ID,using = "product-search-no-matches" )
	private WebElement resultatVide;
	
	WebDriverWait wait;


   public pageRecherche(WebDriver driverAccueil) throws InterruptedException {		
		wait = new WebDriverWait(driverAccueil, Duration.ofSeconds(10));
		wait.until(ExpectedConditions.titleContains("Rechercher"));
	}   
   
   private String recupererResultatRecherche() 
	{	   
		return resultat.getText();
	}
   
   private String recupererResultatRechercheVide() 
	{	   
		return resultatVide.getText();
	}
  
}
