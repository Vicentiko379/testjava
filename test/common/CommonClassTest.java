package common;

import org.hamcrest.MatcherAssert;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.matchers.JUnitMatchers;

import static org.junit.Assert.*;

public class CommonClassTest {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void should() throws Exception {
		CommonClass commonClass = new CommonClass();

		String current = commonClass.getCurrent();

		assertEquals("Common", current);
	}
}