library form_examples.ngform;

import 'package:angular2/angular2.dart' show Component, FORM_DIRECTIVES, CORE_DIRECTIVES, View;

@Component(selector: 'ngform-example')
@View(
    template: '''
    <div class="line">
      <h2>NgForm demo</h2>
      <p>Submit the form to see the data object Angular builds</p>

      <form #f="form" (ng-submit)="onSubmit(f.value)">

        <h3>Control group: credentials</h3>
        <div ng-control-group="credentials">
          <p>Login: <input type="text" ng-control="login"></p>
          <p>Password: <input type="password" ng-control="password"></p>
          <p>Remember login: <input type="checkbox" ng-control="rememberLogin"></p>

        </div>

        <h3>Control group: person</h3>
        <div ng-control-group="person">
          <p>First name: <input type="text" ng-control="firstName"></p>
          <p>Last name: <input type="text" ng-control="lastName"></p>
          <select ng-control="color">
            <option value="" disabled selected>Choose a color</option>
            <option *ng-for="#c of colors" [value]="c">{{c}}</option>
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