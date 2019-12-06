<?php

namespace App\Http\Controllers\Admin;


use App\Writer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;
use App\Http\Controllers\Controller;

class WriterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $writer = Writer::latest()->paginate(4);

        return view('admin.writer.index')->with('writers', $writer);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.writer.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Writer::create([
            'name' => $request['name'],
            'email' => $request['email'],
            'password' => bcrypt($request['password']),
            // 'password' => Hash::make($request['password']),
       ]);

        return redirect()->intended('admin/owner');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $writer = Writer::find($id);
        // Redirect to user list if updating user wasn't existed

        return view('admin.writer.edit',compact('writer'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $writer = Writer::findOrFail($id);
        $constraints = [
            'name' => 'required|max:20',
            'email' => 'required|max:60',
            
            ];
        $input = [
            'name' => $request['name'],
            'email' => $request['email'],
            
        ];
      
        $this->validate($request, $constraints);
        Writer::where('id', $id)
            ->update($input);
            return redirect()->intended('admin/owner');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (Writer::destroy($id)) {
            return redirect('admin/owner')->with('message', 'User Deleted');
        } else {
            return redirect('admin/owner')->with('message', 'Error!!');
        }
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
        ]);
    }
}
