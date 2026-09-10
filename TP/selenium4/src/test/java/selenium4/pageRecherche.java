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

	private WebDriver driverRecherche;


	WebDriverWait wait;


   public pageRecherche(WebDriver driverAccueil) throws InterruptedException {
		driverRecherche = driverAccueil;
		wait = new WebDriverWait(driverRecherche, Duration.ofSeconds(10));
		wait.until(ExpectedConditions.titleContains("Rechercher"));
	}
  
}
