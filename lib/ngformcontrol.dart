library form_examples.ngformcontrol;

import 'package:angular2/angular2.dart' show Component, FORM_DIRECTIVES, View, Control;

@Component(selector: 'ngformcontrol-example')
@View(
    template: '''
    <div class="line">
      <h2>NgFormControl Example</h2>
      <form>
        <p>Element with existing control: <input type="text" [ngFormControl]="loginControl"></p>
        <p>Value of existing control: {{loginControl.value}}</p>
      </form>
    </div>
''',
    directives: const[FORM_DIRECTIVES]
)
class NgFormControlExample {
  Control loginControl = new Control('');
}