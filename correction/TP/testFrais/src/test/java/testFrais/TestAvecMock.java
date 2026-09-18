package testFrais;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.easymock.EasyMock;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class TestAvecMock {
	paramAppli mock;
	
	@BeforeEach
	public void setUp()
	{
		mock = EasyMock.createMock(paramAppli.class);				
	}
	
	@Test
	void test3() throws MonException {
		
		//comportement du mock
		EasyMock.expect(mock.getLimit1()).andReturn(100.0);
		EasyMock.expect(mock.getLimit2()).andReturn(500.0);
		EasyMock.replay(mock);
		
		//utilisation du mock
		CalculFrais f = new CalculFrais(mock);
		assertEquals(f.montant(250.0),20.0,0.0001);
	}
}
