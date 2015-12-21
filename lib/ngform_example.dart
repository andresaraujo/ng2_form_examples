library form_examples.ngform;

import 'package:angular2/angular2.dart' show Component, FORM_DIRECTIVES, CORE_DIRECTIVES, View;

@Component(selector: 'ngform-example')
@View(
    template: '''
    <div class="line">
      <h2>NgForm demo</h2>
      <p>Submit the form to see the data object Angular builds</p>

      <form #f="ngForm" (ngSubmit)="onSubmit(f.value)">

        <h3>Control group: credentials</h3>
        <div ngControl-group="credentials">
          <p>Login: <input type="text" ngControl="login"></p>
          <p>Password: <input type="password" ngControl="password"></p>
          <p>Remember login: <input type="checkbox" ngControl="rememberLogin"></p>

        </div>

        <h3>Control group: person</h3>
        <div ngControl-group="person">
          <p>First name: <input type="text" ngControl="firstName"></p>
          <p>Last name: <input type="text" ngControl="lastName"></p>
          <select ngControl="color">
            <option value="" disabled selected>Choose a color</option>
            <option *ngFor="#c of colors" [value]="c">{{c}}</option>
          </select>
        </div>

        <button type="submit">Submit Form</button>
      </form>

      <p>Form data submitted:</p>
      <pre>{{data}}</pre>
    </div>
''',
    directives: const[FORM_DIRECTIVES, CORE_DIRECTIVES]
)
class NgFormExample {
  NgFormExample() {}

  String data = "{}";

  List<String> colors = ['Red', 'Green', 'Blue'];

  onSubmit(formData) {
    this.data = '$formData';
  }
}