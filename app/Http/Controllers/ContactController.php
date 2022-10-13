<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contact = Contact::all();
        return response()->json(['data' => $contact], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $contact = new Contact;
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->review = $request->review;
        $saved = $contact->save();

        if ($saved) {
            return response()->json(['message' => 'contact added successfully.'], 201);
        } else {
            return response()->json(['message' => 'Something went wrong.'], 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $contact = Contact::where('id', $id)->first();
        return response()->json(['data' => $contact], 200);
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
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $name = $request->name;
        $email = $request->email;
        $review = $request->review;

        $contact = Contact::find($id);
        $contact->name = $name;
        $contact->email = $email;
        $contact->review = $review;
        $contact->save();

        // $contact->save([
        //     'name' => $request->name,
        //     'email' => $request->email,
        //     'review' => $request->review,
        // ]);
        return response()->json(['message' => 'contact updated successfully.'], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function destroy(Contact $id)
    {
        $contact = Contact::find($id);
        $contact->each->delete();
        return response()->json(['message' => 'contact delete successfully.'], 202);
    }
}
