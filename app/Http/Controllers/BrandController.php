<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $brands= Brand::orderBy("id","DESC")->get();
        return view('backend.brand.index',compact('brands'));
    }

    public function brandStatus(Request $request){
        if($request->mode=='true'){
            \DB::table('brands')->where('id',$request->id)->update(['status'=>'active']);
        }
        else{
            \DB::table('brands')->where('id',$request->id)->update(['status'=>'inactive']);

        }
        return response()->json(['msg'=> 'Successfully updated status','status'=>true]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('backend.brand.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'title'=>'nullable|string',
            'photo'=>'required',
            'status'=>'nullable|in:active,inactive',
        ]);
        $data=$request->all();
        $slug=\Str::slug($request->input('title'));
        $slug_count=Brand::where('slug',$slug)->count();
        if($slug_count>0){
            $slug = time().'-'.$slug;
        }
        $data['slug']=$slug;
        $status=Brand::create($data);
        if($status){
            return redirect()->route('brand.index')->with('success','Brand successfully created!');
        }
        else{
            return back()->with('error','Something went wrong');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $brand=Brand::find($id);
        if($brand){
            return view('backend.brand.edit',compact('brand'));
        }
        else{
            return back()->with('error','Data not found');
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $brand=Brand::find($id);
        if($brand){
            $this->validate($request,[
                'title'=>'nullable|string',
                'photo'=>'required',
                'status'=>'nullable|in:active,inactive',
            ]);
            $data=$request->all();
            
            $status=$brand->fill($data)->save();
            if($status){
                return redirect()->route('brand.index')->with('success','Successfully updated brand');
            }else{
                return back()->with('error','Something went wrong!');
            }
        }
        else{
            return back()->with('error','Data not found');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $brand=Brand::find($id);
        if($brand){
            $status=$brand->delete();
            if($status){
                return redirect()->route('brand.index')->with('success','Brand successfully deleted');
            }
            else{
                return back()->with('error','Something went wrong!');
            }
        }
        else{
            return back()->with('error','Data not found');
        }
    }
}
