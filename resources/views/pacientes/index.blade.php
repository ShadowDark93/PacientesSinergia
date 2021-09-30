@extends('layouts.app')

@section('content')
    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th>Cédula</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Genero</th>
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
