import { Component } from '@angular/core';
import { setTheme } from 'ngx-bootstrap/utils'

@Component({
    selector: 'app',
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.css']
})
export class AppComponent {
    constructor() {
        setTheme('bs3');
    }
}
