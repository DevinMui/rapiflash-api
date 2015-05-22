# Rapiflash API
Communicate with Rapiflash through out the world using the official API

### API Calls

1. `GET /api/v1/floods` - gets the latest 1000 Rapiflash data
2. `GET /api/v1/floods/:id` - gets the specific Rapiflash device data
3. `POST /api/v1/floods` - creates new Rapiflash device data

### Sample Request

`curl -v 'api.devinmui.c9.io/api/v1/floods'`

returns `[{"id":5,"normal_level":6.0,"location":"Georgia","current_level":8.0,"flooded":true,"created_at":"2015-05-22T01:53:46.659Z","updated_at":"2015-05-22T01:53:46.659Z","upstream":null},{"id":4,"normal_level":3.5,"location":"Georgia","current_level":5.0,"flooded":true,"created_at":"2015-05-22T01:18:15.395Z","updated_at":"2015-05-22T01:18:15.395Z","upstream":null},{"id":3,"normal_level":3.5,"location":"Georgia","current_level":5.0,"flooded":true,"created_at":"2015-05-22T00:32:26.934Z","updated_at":"2015-05-22T00:32:26.934Z","upstream":null},{"id":2,"normal_level":3.0,"location":"Australia","current_level":5.0,"flooded":false,"created_at":"2015-05-22T00:09:26.892Z","updated_at":"2015-05-22T00:09:26.892Z","upstream":null},{"id":1,"normal_level":4.5,"location":"Australia","current_level":5.0,"flooded":false,"created_at":"2015-05-21T23:55:39.455Z","updated_at":"2015-05-21T23:55:39.455Z","upstream":null}`

`curl -v 'api.devinmui.c9.io/api/v1/floods/1'`

returns `{"id":1,"normal_level":4.5,"location":"Australia","current_level":5.0,"flooded":false,"created_at":"2015-05-21T23:55:39.455Z","updated_at":"2015-05-21T23:55:39.455Z","upstream":null}`

`curl -H "Content-Type: application/json" "http://api.devinmui.c9.io/api/v1/floods" -d '{"flood": {"normal_level":6,"current_level":8,"location":"Georgia","flooded":true}}'`

returns `{"message":"Resource created"}`

### Contributors

James Wang, Jaiveer Singh, Guarav Phanse, Devin Mui
AKA Creators of Rapiflash

### License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.