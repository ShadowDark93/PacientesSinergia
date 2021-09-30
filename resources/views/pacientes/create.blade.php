@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="card text-center my-3">
            <div class="card-body">
                <h4 class="card-title">CRAR PACIENTE</h4>
            </div>
        </div>

        <form action="{{ route('pacientes.store') }}" method="post">
            <div class="row my-3">
                <div class="col">
                    <label for="tipos_documentos_id">Seleccione el tipo de documento</label>
                    <select class="custom-select" id="tipos_documentos_id" name="tipos_documentos_id">
                        <option value="1" selected>Cedula</option>
                        <option value="2">Tarjeta de identidad</option>
                    </select>
                </div>

                <div class="col">
                    <label id="numero_documento" for="numero_documento">Número de documento</label>
                    <input type="number" class="form-control" placeholder="Número de documento">
                </div>

                <div class="col">
                    <label for="genero_id">Genero</label>
                    <select class="custom-select" id="tipos_documentos_id" name="tipos_documentos_id">
                        <option value="1" selected>Masculino</option>
                        <option value="2">Femenino</option>
                    </select>
                </div>
            </div>

            <div class="row my-3">
                <div class="col">
                    <label for="formGroupExampleInput">Primer Nombre</label>
                    <input id="nombre1" type="text" class="form-control" placeholder="Primer Nombre">
                </div>

                <div class="col">
                    <label for="formGroupExampleInput">Segundo Nombre</label>
                    <input id="nombre2" type="text" class="form-control" placeholder="Segundo Nombre">
                </div>

                <div class="col">
                    <label for="formGroupExampleInput">Primer Apellido</label>
                    <input id="apellido1" type="text" class="form-control" placeholder="Last name">
                </div>

                <div class="col">
                    <label for="formGroupExampleInput">Segundo Apellido</label>
                    <input id="apellido2" type="text" class="form-control" placeholder="First name">
                </div>
            </div>
            <div class="row my-3">
                <label for="tipos_documentos_id">Seleccione el tipo de documento</label>
                <select class="custom-select" id="tipos_documentos_id" name="tipos_documentos_id">
                    <option value="1" selected>Cedula</option>
                    <option value="2">Tarjeta de identidad</option>
                </select>
                <label for="tipos_documentos_id">Seleccione el tipo de documento</label>
                <select class="custom-select" id="tipos_documentos_id" name="tipos_documentos_id">
                    <option value="1" selected>Cedula</option>
                    <option value="2">Tarjeta de identidad</option>
                </select>
            </div>
        </form>

    </div>

@endsection
