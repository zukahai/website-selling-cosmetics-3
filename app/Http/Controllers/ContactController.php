<?php

namespace App\Http\Controllers;

use App\Http\Services\ContactService;
use App\Models\Contact;
use App\Http\Requests\StoreContactRequest;
use App\Http\Requests\UpdateContactRequest;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public $data = [];

    public function __construct(ContactService $contactService)
    {
        $this->contactService = $contactService;
    }

    public function index()
    {
        $this->data['contacts'] = $this->contactService->getAll();
        return view('admin.pages.contact.index', $this->data);
    }


    public function create(Request $request)
    {
        $request->validate(
            [
                'email' => 'required',
                'msg' => 'required',
            ],
            [
                'email.required' => 'Vui lòng nhập email',
                'msg.required' => 'Vui lòng nhập nội dung',
            ]
        );
        $contact = new Contact();
        $contact->email = $request->email;
        $contact->message = $request->msg;
        $this->contactService->save($contact);
        return redirect(route('user.contact'))->with('success', 'Yêu cầu đã được gửi đi');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreContactRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreContactRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function show(Contact $contact)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function edit(Contact $contact)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateContactRequest  $request
     * @param  \App\Models\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateContactRequest $request, Contact $contact)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function destroy(Contact $contact)
    {
        //
    }
}
