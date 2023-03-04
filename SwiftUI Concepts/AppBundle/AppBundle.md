
# App Bundle

Bundle is a collection of all files and assets of our app which is created when Xcode builds our app regardless of target platform be it macOS, iOS or tvOS etc.

* there are two steps to get hold on data of any file inside Bundle

        1. getting file URL
        2. getting file Content



```swift
    //getting file URL
    if let fileURL = Bundle.main.url(forResource: "SomeFile", withExtension: "txt"){

        //getting file Content
        if let fileContent = try? String(contentsOf: fileURL){
            Text(fileContent)
        }

    }

```