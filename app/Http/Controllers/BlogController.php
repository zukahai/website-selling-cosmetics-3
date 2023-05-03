<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Http\Requests\StoreBlogRequest;
use App\Http\Requests\UpdateBlogRequest;
use App\Http\Services\BlogService;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public $data = [];
    public function __construct(BlogService $blogService)
    {
        $this->blogService = $blogService;
    }

    public function index()
    {
        $this->data['blogs'] = $this->blogService->getAll();
        return View('user.pages.blog.index', $this->data);
    }

    public function indexAdmin() {
        $this->data['blogs'] = $this->blogService->getAll();
        return View('admin.pages.blog.index', $this->data);
    }

    public function deleteAdmin($id) {
        $this->blogService->delete($id);
        return redirect()->back()->with('success', 'Xóa thành công');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function createAdmin()
    {
        return View('admin.pages.blog.create');
    }

    public function solveCreateAdmin(Request $request) {
        if ($request->hasFile('image')) {
            $file = $request->image;
            $path = $file->store('images');
            $file->move(public_path('images'), $path);
        } else {
            return "Vui long chon file";
        }
        $blog = new Blog();
        $blog->title = $request->title;
        $blog->content = $request->content;
        $blog->urlImage = $path;
        $blog->user_id = auth()->user()->id;

        $this->blogService->save($blog);
        return redirect(route('admin.blog.index'));
    }

    public function blogDetail($id) {
        $this->data['blog'] = $this->blogService->find($id);
        return View('user.pages.blog.detail', $this->data);
    }
    
    public function store(StoreBlogRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function show(Blog $blog)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function edit(Blog $blog)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBlogRequest  $request
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateBlogRequest $request, Blog $blog)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function destroy(Blog $blog)
    {
        //
    }
}
