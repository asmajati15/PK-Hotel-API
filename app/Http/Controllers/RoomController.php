<?php

namespace App\Http\Controllers;

use App\Models\Room;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

class RoomController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $room = Room::all();
        return response()->json(['data' => $room], 200);
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
        $validated = Validator::make($request->all(),[
            'type' =>'required',
            'description' =>'required',
            'price' =>'required',
        ]);

        if ($validated->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'validation error',
                'errors' => $validated->errors()
            ], 401);

        $room = Room::create([
            'type'=>$request->type,
            'description'=>$request->description,
            'price'=>$request->price
        ]);
                
            return response()->json([
                'message' => 'room created Successfuly',
                'room' => $room
            ],200);
        }
        /* $room = new Room;
            $room->type = $request->type;
            $room->description = $request->description;
            $room->price = $request->price;
            $saved = $room->save();

            if ($saved) {
                return response()->json(['message' => 'Room added successfully.'], 201);
            } else {
                return response()->json(['message' => 'Something went wrong.'], 500);
        } */
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $room = Room::where('id', $id)->first();
        return response()->json(['data' => $room], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function edit(Room $room)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // $validated = Validator::make($request->all(),[
        //     'type' =>'required',
        //     'description' =>'required',
        //     'price' =>'required',
        // ]);

        // if ($validated->fails()) {
        //     return response()->json([
        //         'status' => false,
        //         'message' => 'validation error',
        //         'errors' => $validated->errors()
        //     ], 401);

        // $room = Room::create($id, [
        //     'type'=>$request->type,
        //     'description'=>$request->description,
        //     'price'=>$request->price
        // ]);
                
        //     return response()->json([
        //         'message' => 'room created Successfuly',
        //         'room' => $room
        //     ],200);
        // }

        $type = $request->type;
        $description = $request->description;
        $price = $request->price;

        $room = Room::find($id);
        $room->type = $type;
        $room->description = $description;
        $room->price = $price;
        $room->save();

        $room->save([
            'type' => $request->type,
            'description' => $request->description,
            'price' => $request->price,
            'type' => $request->type
        ]);
        return response()->json(['message' => 'Room updated successfully.'], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function destroy(Room $id)
    {
        $room = Room::find($id);
        $room->each->delete();
        return response()->json(['message' => 'Room delete successfully.'], 202);
    }
}
