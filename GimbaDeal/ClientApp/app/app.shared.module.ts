import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './components/app/app.component';
import { NavMenuComponent } from './components/navmenu/navmenu.component';
import { HomeComponent } from './components/home/home.component';
import { FetchDataComponent } from './components/fetchdata/fetchdata.component';
import { CounterComponent } from './components/counter/counter.component';
import { ClienteService } from './core/services/cliente.service';
import { ListarClientesComponent } from './components/clientes/listar-clientes.component';
import { IncluirClienteComponent } from './components/clientes/incluir-cliente.component';

@NgModule({
    providers: [
        ClienteService
    ],
    exports: [
        IncluirClienteComponent
    ],
    imports: [
        ReactiveFormsModule,
        CommonModule,
        HttpModule,
        FormsModule,
        RouterModule.forRoot([
            { path: '', redirectTo: 'home', pathMatch: 'full' },
            { path: 'home', component: HomeComponent },
            { path: 'counter', component: CounterComponent },
            { path: 'listar-clientes', component: ListarClientesComponent },
            { path: 'incluir-cliente', component: IncluirClienteComponent },
            { path: 'fetch-data', component: FetchDataComponent },
            { path: '**', redirectTo: 'home' }
        ])
    ],
    declarations: [
        AppComponent,
        NavMenuComponent,
        CounterComponent,
        FetchDataComponent,
        ListarClientesComponent,
        IncluirClienteComponent,
        HomeComponent
    ]
})
export class AppModuleShared {
}
