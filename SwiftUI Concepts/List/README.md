
# List View

* List is equivalent of UITableView in UIKit


* The job of List is to provide a scrolling table of data. In fact, it’s pretty much identical to Form, except it’s used for presentation of data rather than requesting user input.

* List with static rows:

```swift
    List{
        Text("static row 1")
        Text("static row 2")
    }
```

* List with dynamic rows:

```swift
    List{
        ForEach(0..<5){
            Text("dynamic row \($0)")
        }
    }
```

* List with static + dynamic rows:

```swift
    List{

        Text("static row 1")

        ForEach(0..<5){
            Text("dynamic row \($0)")
        }

        Text("static row 2")
    }
```

* we can combine that with sections:

```swift
List {
    Section("Section 1") {
        Text("Static row 1")
        Text("Static row 2")
    }

    Section("Section 2") {
        ForEach(0..<5) {
            Text("Dynamic row \($0)")
        }
    }

    Section("Section 3") {
        Text("Static row 3")
        Text("Static row 4")
    }
}
```

* Being able to have both static and dynamic content side by side lets us recreate something like the Wi-Fi screen in Apple’s Settings app – a toggle to enable Wi-Fi system-wide, then a dynamic list of nearby networks, then some more static cells with options to auto-join hotspots and so on.

* list looks similar to the form we had previously, but we can adjust how the list looks using the listStyle() modifier, like this: 

```swift
    List{
        // something
    }
    .listStyle(.grouped)
```
* one thing List can do that Form can’t is to generate its rows entirely from dynamic content without needing a ForEach.

* if entire list is made up of dynamic rows:

```swift
    List(0..<5) {
    Text("Dynamic row \($0)")
}
```

* When working with an array of data, SwiftUI still needs to know how to identify each row uniquely, so if one gets removed it can simply remove that one rather than having to redraw the whole list. This is where the id parameter comes in, and it works identically in both List and ForEach – it lets us tell SwiftUI exactly what makes each item in the array unique.

* When working with arrays of strings and numbers, the only thing that makes those values unique is the values themselves. That is, if we had the array [2, 4, 6, 8, 10], then those numbers themselves are themselves the unique identifiers. After all, we don’t have anything else to work with!

* When working with this kind of list data, we use id: \\.self like this: 

```swift
struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]

    var body: some View {
        List(people, id: \.self) {
            Text($0)
        }
    }
}
```

* That works just the same with ForEach, so if we wanted to mix static and dynamic rows we could have written this instead:

```swift
List {
    Text("Static Row")

    ForEach(people, id: \.self) {
        Text($0)
    }

    Text("Static Row")
}
``` 