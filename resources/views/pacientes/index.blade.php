@extends('layouts.app')

@section('content')
    <div class="container">

        <table class="table">
        <div class="card text-center">
          <div class="card-body">
            <h4 class="card-title">LISTA PACIENTES</h4>
          </div>
        </div>
        <div class="container my-5">
            <div class="row">
                <a href="{{ route('pacientes.create') }}" class="btn btn-success">Crear Paciente</a>
            </div>
        </div>
            <thead>
                <tr>
                    <th>Cédula</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Genero</th>
                    <th>Operaciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($pacientes as $paciente)
                    <tr>
                        <td scope="row">{{ $paciente->numero_documento }}</td>
                        <td>{{ $paciente->nombre1 }} {{ $paciente->nombre2 }}</td>
                        <td>{{ $paciente->apellido1 }} {{ $paciente->apellido2 }}</td>
                        <td>
                            @if ($paciente->genero_id == 1)
                                Masculino
                            @else
                                Femenino
                            @endif
                        </td>
                        <td>
                            <col-span><a class="btn btn-primary">Editar</a></col-span>
                            <col-span><a class="btn btn-warning">Eliminar</a></col-span>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
