import matlab.unittest.TestRunner;
import matlab.unittest.TestSuite;
import matlab.unittest.plugins.TestReportPlugin;

suite = testsuite({'ScriptBasedTest','ClassBasedTest'});

runner = TestRunner.withNoPlugins;
htmlFolder = 'myResults';
plugin = TestReportPlugin.producingHTML(htmlFolder);

pdfFile = 'MyTestReport.pdf';
plugin = TestReportPlugin.producingPDF(pdfFile);

docxFile = 'MyReport.docx';
plugin = TestReportPlugin.producingDOCX(docxFile);

runner.addPlugin(plugin);
result = runner.run(suite);
