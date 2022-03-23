package testRunner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		features=".//features/login.feature",
		glue="stepDefinations",
		monochrome=true,
		tags= {"@sanity"},
		plugin= {"pretty","html:test-output"}
		)

public class TestRunner {

}
