<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryConTroller extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::orderBy("id","DESC")->get();
        return view('backend.category.index',compact('categories'));
    }

    public function categoryStatus(Request $request){
        if($request->mode=='true'){
            \DB::table('categories')->where('id',$request->id)->update(['status'=>'active']);
        }
        else{
            \DB::table('categories')->where('id',$request->id)->update(['status'=>'inactive']);

        }
        return response()->json(['msg'=> 'Successfully updated status','status'=>true]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $parent_cats=Category::where('is_parent',1)->orderBy('title','ASC')->get();
        return view('backend.category.create',compact('parent_cats'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // return $request->all();
        $this->validate($request,[
            'title'=>'string|required',
            'summary'=>'string|nullable',
            'is_parent'=>'sometimes|in:1',
            'parent_id'=>'nullable|exists:categories,id',
            'status'=> 'nullable|in:active,inactive',
        ]);
        $data=$request->all();
        // return $data;
        $slug=\Str::slug($request->input('title'));
        $slug_count=Category::where('slug',$slug)->count();
        if($slug_count>0){
            $slug = time().'-'.$slug;
        }
        $data['slug']=$slug;
        $data['is_parent']=$request->input('is_parent',0);
        //return $data;
        $status=Category::create($data);
        if($status){
            return redirect()->route('category.index')->with('success','Category successfully created');
        }else{
            return back()->with('error','Something went wrong!');
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
        $category=Category::find($id);
        $child_cat_id=Category::where('parent_id',$id)->pluck('id');
        $parent_cats=Category::where('is_parent',1)->orderBy('title','ASC')->get();
        if($category){
            if(count($child_cat_id)> 0){
                Category::shiftChild($child_cat_id);
            }
            return view('backend.category.edit',compact(['category','parent_cats']));
        }
        else{
            return back()->with('error','Category not found');
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $category=Category::find($id);
        if($category){
            $this->validate($request,[
                'title'=>'string|required',
                'summary'=>'string|nullable',
                'is_parent'=>'sometimes|in:1',
                'parent_id'=>'nullable|exists:categories,id',
                'status'=> 'nullable|in:active,inactive'
            ]);
            $data=$request->all();

            if($request->is_parent==1){
                $data['parent_id']=null;
            }
            
            $data['is_parent']=$request->input('is_parent',0);
            $status=$category->fill($data)->save();
            if($status){
                return redirect()->route('category.index')->with('success','Category successfully updated');
            }else{
                return back()->with('error','Something went wrong!');
            }
        }
        else{
            return back()->with('error','Category not found');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $category=Category::find($id);
        if($category){
            $status=$category->delete();
            if($status){
                return redirect()->route('category.index')->with('success','Category successfully deleted');
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
