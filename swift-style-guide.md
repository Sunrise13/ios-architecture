# swift-style-guide

* Spacing. 1 line between methods
* Use // MARK: 
* Always use Swift's native types when available. 
* self - avoid using self since Swift does not require it to access an object's properties or invoke its methods.
* Use UpperCamelCase for enumeration values

####Naming####

```
private let maximumWidgetCount = 100

class WidgetContainer {
  var widgetButton: UIButton
  let widgetHeightPercentage = 0.85
}
```

#### ####
```
if user.isHappy {
  // Do something
} else {
  // Do something else
}
```

####Protocol Conformance####

```
class MyViewcontroller: UIViewController {
  // class stuff here
}

// MARK: - UITableViewDataSource

extension MyViewcontroller: UITableViewDataSource {
  // table view data source methods
}

// MARK: - UIScrollViewDelegate

extension MyViewcontroller: UIScrollViewDelegate {
  // scroll view delegate methods
}
```

####MARK Format####

* Spacing. 1 line between MARK and method (or group of methods)
* Capitalize 1st letter of description

```
// MARK: - Description
```






