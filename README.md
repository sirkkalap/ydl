# Ydl - Simple webui for YouTube downloads

## Why

I noticed that some of my favorite clips were being removed from YouTube and
since thay are a part of my integrity and memories I started to download them
before they are lost.

After having done this manually for a while I thought: "Hmm. This could be
the work of the computer and I could instead learn new things about Angular
and stuff.".

So here I am reading and writing new code to learn and to share.

## What

Copy and Paste Youtube url to Ydl and expect your server to fetch the video and
store it to some path.

## How

Using Angular frontend and http://rg3.github.io/youtube-dl/

## Development instructions

Install node `sudo pkg install node`. Supported Node >= 0.10. Node 0.8 is
unsupported and is missing required gulp version.

Install npm, unless your node has it installed already `sudo pkg install npm`.

Run `npm install` to install dependencies.

Run `npm run dev-server` to run the application in development mode.

Run `npm test` to run the tests. They require a running server.

TODO: Production mode running

## Legal

   Copyright [2014] [Petri Sirkkala]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

Note that you must agree to YouTube legalities too, when using this. I can not
take your responsibilities here.
