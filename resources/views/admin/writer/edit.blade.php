@extends('layouts.admin');
@section('content')
<div class="container" style="width:70%; margin:0 auto;">
  <div class="pull-right">
    <a class="btn btn-primary" href="{{ route('owner.index') }}"> Back</a>
        </div>
<h2>edit Form</h2>

@include('partial.message')
@include('partial.formerror')
   
    {!! Form::model($writer, ['method' => 'PATCH','route' => ['owner.update',
    $writer->id]]) !!}
      @include('admin.writer.edit_form')


    {!! Form::close() !!}

</div>
@endsection 
