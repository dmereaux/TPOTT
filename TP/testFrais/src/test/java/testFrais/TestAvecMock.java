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
	public void test1() throws MonException
	{

	}

}
