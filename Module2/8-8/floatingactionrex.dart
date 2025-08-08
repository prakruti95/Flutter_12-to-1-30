import 'package:flutter/material.dart';

class Floatingactionrex extends StatefulWidget {
  const Floatingactionrex({super.key});

  @override
  State<Floatingactionrex> createState() => _FloatingactionrexState();
}

class _FloatingactionrexState extends State<Floatingactionrex> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Center
            (
                child: Column
                  (
                    children: 
                    [
                      
                        Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                      Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj",width: 250,height: 300,),
                       FloatingActionButton
                        (
                          child: Icon(Icons.camera),
                          onPressed: () => print("called")
                      ),

                    ],
                  ),
            ),
        ),
          floatingActionButton: FloatingActionButton
            (
               child: Icon(Icons.camera),
               onPressed: () => print("called")
            ),
      );
  }
}
