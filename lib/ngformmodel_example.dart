library form_examples.ngformmodel;

import 'package:angular2/angular2.dart' show Component, FORM_DIRECTIVES, View, ControlGroup, Control;

@Component(selector: 'ngformmodel-example')
@View(
    template: '''
    <div class="line">
      <h2>NgFormModel Example</h2>

      <form [ngFormModel]="loginForm">
        <p>Login: <input type="text" ngControl="login"></p>
        <p>Password: <input type="password" ngControl="password"></p>
      </form>

      <p>Value:</p>
      <pre>{{value}}</pre>
    </div>
''',
    directives: const[FORM_DIRECTIVES]
)
class NgFormModelExample {
  ControlGroup loginForm;

  NgFormModelExample() {
    this.loginForm = new ControlGroup({
      'login': new Control(""),
      'password': new Control("")
    });
  }

  String get value {
    return this.loginForm.value;
  }
}