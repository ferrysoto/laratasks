@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="col-sm-offset-2 col-sm-8">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Nueva tarea
                </div>
                <div class="panel-body">
                    @include('common.errors')
                    <form action="{{ url('task')}}" method="POST" class="form-horizontal">
                        {{ csrf_field() }}

                        <div class="form-group">
                            <label for="task-name" class="col-sm-3 control-label">Título</label>

                            <div class="col-sm-6">
                                <input type="text" name="name" id="task-name" class="form-control" value="{{ old('task') }}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-6">
                                <button type="submit" class="btn btn-default">
                                    <i class="fa fa-btn fa-plus"></i>Añadir tarea
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            @if (count($tasks) > 0)
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Tareas pendientes
                    </div>
                    <div class="panel-body">
                        <table class="table table-striped task-table">
                            <thead>
                                <th>Título de las tareas</th>
                                <th>&nbsp;</th>
                            </thead>
                            <tbody>
                                @foreach ($tasks as $task)
                                  @if($task->is_completed == 0)
                                    <tr>
                                        <td class="table-text"><div>{{ $task->name }}</div></td>
                                        <td style="float:right;">
                                            <form action="{{ url('task/'.$task->id) }}" method="POST">
                                                {{ csrf_field() }}
                                                {{ method_field('DELETE') }}

                                                <button type="submit" class="btn btn-danger">
                                                    <i class="fa fa-btn fa-trash"></i>Borrar
                                                </button>
                                            </form>
                                            <form action="{{ url('task/update/'.$task->id) }}" method="GET">
                                              {{ csrf_field() }}
                                              <button type="submit" class="btn btn-success">
                                                  <i class="fa fa-btn fa-check"></i>Completada
                                              </button>
                                            </form>
                                        </td>
                                    </tr>
                                  @endif
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif
            @if (count($tasks) > 0)
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Tareas completadas
                    </div>
                    <div class="panel-body">
                        <table class="table table-striped task-table">
                            <thead>
                                <th>Título de las tareas</th>
                                <th>&nbsp;</th>
                            </thead>
                            <tbody>
                                @foreach ($tasks as $task)
                                  @if($task->is_completed == 1)
                                    <tr>
                                        <td class="table-text"><div>{{ $task->name }}</div></td>
                                        <td style="float:right;">
                                            <form action="{{ url('task/'.$task->id) }}" method="POST">
                                                {{ csrf_field() }}
                                                {{ method_field('DELETE') }}

                                                <button type="submit" class="btn btn-danger">
                                                    <i class="fa fa-btn fa-trash"></i>Borrar
                                                </button>
                                            </form>
                                            <form action="{{ url('task/update/'.$task->id) }}" method="GET">
                                              {{ csrf_field() }}
                                              <button type="submit" class="btn btn-warning">
                                                <i class="fa fa-btn fa-undo"></i>Marcar como pendiente
                                              </button>
                                            </form>
                                        </td>
                                    </tr>
                                  @endif
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif
        </div>
    </div>
@endsection
