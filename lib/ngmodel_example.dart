library form_examples.ngmodel;

import 'package:angular2/angular2.dart' show Component, FORM_DIRECTIVES, View;

@Component(selector: 'ngmodel-example')
@View(
    template: '''
  <div class="line">
    <h2>NgModel Example</h2>
    <input type="text" [(ngModel)]="greeting">
    <p>{{greeting}}, user!</p>
    <button (click)="switchGreeting()">Change greeting</button>
  </div>
''',
  directives: const[FORM_DIRECTIVES]
)
class NgModelExample {
  String greeting = "Hello";

  void switchGreeting() {
    if (this.greeting == 'Hello') {
    this.greeting = 'Goodbye';
    } else {
    this.greeting = 'Hello';
    }
  }
}