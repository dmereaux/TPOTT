package testFrais;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class TestCalculFrais {
	// mon premier test
	@Test
	void test() throws MonException {
		CalculFrais f = new CalculFrais();
		assertEquals(f.montant(600.0),0.0,0.0001);
	}
	@Test
	void test3() throws MonException {
		CalculFrais f = new CalculFrais();
		assertEquals(f.montant(250.0),20.0,0.0001);
	}
	@Test
	void test4() throws MonException {
		CalculFrais f = new CalculFrais();
		assertEquals(f.montant(199.0),30.0,0.0001);
	}
	@Test()
	void test2() throws MonException {
			assertThrows(MonException.class, () -> {
				CalculFrais f = new CalculFrais();
				f.montant(-600.0);
		     });
		
	}
}
