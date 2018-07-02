import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';
import { AlertModule } from 'ngx-bootstrap/alert';
import { ModalModule } from 'ngx-bootstrap/modal';
import { AppComponent } from './components/app/app.component';
import { IncluirClienteComponent } from './components/clientes/incluir-cliente/incluir-cliente.component';
import { ListarClientesComponent } from './components/clientes/listar-clientes/listar-clientes.component';
import { FormGroupClienteComponent } from './components/clientes/shared/form-group-cliente.component';
import { FormGroupEnderecoComponent } from './components/clientes/shared/form-group-endereco.component';
import { HomeComponent } from './components/home/home.component';
import { NavMenuComponent } from './components/navmenu/navmenu.component';
import { ClienteService } from './core/services/cliente.service';
import { EnderecoService } from './core/services/endereco.service';


@NgModule({
    providers: [
        ClienteService,
        EnderecoService
    ],
    exports: [
        IncluirClienteComponent
    ],
    imports: [
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
        ]),
        ReactiveFormsModule
    ],
    declarations: [
        AppComponent,
        NavMenuComponent,
        ListarClientesComponent,
        IncluirClienteComponent,
        HomeComponent,
        FormGroupClienteComponent,
        FormGroupEnderecoComponent
    ]
})
export class AppModuleShared {
}
