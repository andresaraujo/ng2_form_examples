library form_examples;

import 'package:angular2/angular2.dart' show Component, View;
import 'package:ng2_form_examples/ngmodel_example.dart' show NgModelExample;
import 'package:ng2_form_examples/ngformcontrol.dart' show NgFormControlExample;
import 'package:ng2_form_examples/ngformmodel_example.dart' show NgFormModelExample;
import 'package:ng2_form_examples/ngform_example.dart' show NgFormExample;

@Component(selector: 'app')
@View(
    template: '''
    <ngmodel-example></ngmodel-example>
    <ngformcontrol-example></ngformcontrol-example>
    <ngformmodel-example></ngformmodel-example>
    <ngform-example></ngform-example>
    ''',
    directives: const [NgModelExample, NgFormControlExample,  NgFormModelExample, NgFormExample])
class FormExamples {

}