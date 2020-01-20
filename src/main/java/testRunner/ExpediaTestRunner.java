package testRunner;



import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/main/java/feature", //the path of the feature files
        glue={"stepDefination"}, //the path of the step definition files
        format= {"pretty","html:test-outout"}, //to generate different types of reporting
        dryRun = false


)

public class ExpediaTestRunner {

}
