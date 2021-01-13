import matlab.unittest.TestRunner;
import matlab.unittest.TestSuite;
import matlab.unittest.plugins.TestReportPlugin;

suite = testsuite({'ScriptBasedTest','ClassBasedTest'});

runner = TestRunner.withNoPlugins;
htmlFolder = 'myResults';
plugin = TestReportPlugin.producingHTML(htmlFolder);

runner.addPlugin(plugin);
result = runner.run(suite);
