
<img width="1043" alt="img" src="https://github.com/iBilal16/MovieApp/assets/96771112/bdb13b6a-4447-453e-b8b8-0e7be62cfd5e">

An Example iOS Application working with [The Movie DB API](https://www.themoviedb.org/documentation/api).
This iOS application allows users to browse movies and explore details using The Movie Database (TMDb) API.


## How to run

- Clone or download the project and run `pod install`.
if pods doesn’t install or run try `sudo gem install cocoapods --user-install`.
- Create a free TMDb developer account and obtain an API key (https://developer.themoviedb.org/docs/authentication-application).
- Add your API key to the project (IMPORTANT: Do not commit your API key to the repository!).
- Install any additional dependencies (e.g., Alamofire).
- Open the project in Xcode and run the app on your iOS device or simulator.


## Technical specs
- Language: Swift
- Networking: URLSession
- DB Store: CoreData/ USERDEFAULTS
- Architecture: MVC
- Framework: UIKIT
- Pagination
- Models, Collection and TableView Data
- API: TMDb (requires a free API key)
- UI and Unit Testing
- Swift standard coding/decoding for custom objects


## Features
- Splash Screen Logo
- Main Tabbar Screen 
- Search Movie Tab Screen
- Movie Detail view
- Favourite Tab Screen
- App works offline and saves previous responses in DB (using USERDEFAULTS)
- Saved Movies are stored using USERDEFAULTS
- Notifications on DB state change
- Recently added favourite items are shown on favourite screen
- Alerts / Adding to Favourite / Already Added Alerts Notifications

 ## Screenshots

<img width="1043" alt="img" src="https://github.com/iBilal16/MovieApp/assets/96771112/133bde58-2ba6-4fde-8ea6-53841280185b">

<img width="1043" alt="img1" src="https://github.com/iBilal16/MovieApp/assets/96771112/ed4efc8b-a66c-4408-b167-9c0d29ea6ae6">



## Credits

Design: [Bilal Ahmad](https://github.com/iBilal16)

## License

Movies App is available under the MIT license. See the LICENSE file for more info.
