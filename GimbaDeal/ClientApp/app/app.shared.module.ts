import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ReactiveFormsModule, FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './components/app/app.component';
import { NavMenuComponent } from './components/navmenu/navmenu.component';
import { HomeComponent } from './components/home/home.component';
import { ClienteService } from './core/services/cliente.service';
import { ListarClientesComponent } from './components/clientes/listar-clientes/listar-clientes.component';
import { IncluirClienteComponent } from './components/clientes/incluir-cliente/incluir-cliente.component';
import { ModalModule } from 'ngx-bootstrap/modal';
import { AlertModule } from 'ngx-bootstrap/alert';

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
        ModalModule.forRoot(),
        AlertModule.forRoot(),
        RouterModule.forRoot([
            { path: '', redirectTo: 'home', pathMatch: 'full' },
            { path: 'home', component: HomeComponent },
            { path: 'listar-clientes', component: ListarClientesComponent },
            { path: 'incluir-cliente', component: IncluirClienteComponent },
            { path: '**', redirectTo: 'home' }
        ])
    ],
    declarations: [
        AppComponent,
        NavMenuComponent,
        ListarClientesComponent,
        IncluirClienteComponent,
        HomeComponent
    ]
})
export class AppModuleShared {
}
