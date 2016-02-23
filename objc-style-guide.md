# objc-style-guide


Use .clang-format file. It contains almost everything that is required for formatting, but still has issues (for example, blocks formatting). Pull requests are welcome.

https://github.com/travisjeffery/ClangFormat-Xcode





####Spacing####
* All vertical spaces (between methods, pragma marks, etc) - 1 line
* Indent using 4 spaces.
* Method braces and other braces (if/else/switch/while etc.) always open on the same line as the statement but close on a new line.

####Blocks formatting####
```
[UIView animateWithDuration:1.0 animations:^{
    // something
} completion:^(BOOL finished) {
    // something
}];
```

####Comments####

* Use VVDocumenter-Xcode
* Comment complex parts of code
* Comment interfaces, public methods, properties (not required, but useful for generating documentation)

Use #pragma mark - to categorize methods in functional groupings and protocol/delegate implementations
```
#pragma mark - Lifecycle
- (void)viewDidLoad {}
- (void)viewWillAppear:(BOOL)animated {}
- (void)didReceiveMemoryWarning {}

#pragma mark - Actions
- (IBAction)submitData:(id)sender {}

#pragma mark - Public
#pragma mark - Private
#pragma mark - UITableViewDataSource
#pragma mark - UITableViewDelegate
```

####Naming####
* Using long method and variable names is good (settingsButton is better than setBut)
* CamelCase

####Methods####

* In method signatures, there should be a space after the method type (-/+ symbol). 
* There should be a space between the method segments (matching Apple's style). 
* There should be 1 space before {

```
- (void)setExampleText:(NSString *)text image:(UIImage *)image;
- (void)sendAction:(SEL)aSelector to:(id)anObject forAllCells:(BOOL)flag;
- (id)viewWithTag:(NSInteger)tag;
- (instancetype)initWithWidth:(CGFloat)width height:(CGFloat)height;
 ```

####Property Attributes####

* Prefer copy instead of strong for NSString
* The order of properties should be atomicity then storage (matching Apple's style).

```
@property (nonatomic, weak) IBOutlet UIView *containerView;
@property (nonatomic, copy) NSString *objectName;
```

####Constants####

Preferred:
```
static CGFloat const ImageThumbnailHeight = 50.0;
```
Not Preferred:
```
#define thumbnailHeight 2
```

####Case Statements####
```
switch (condition) {
  case 1: {
    // ...
    break;
  }
  case 2: {
    // ...
    // Multi-line example using braces
    break;
  }
  case 3: {
    // ...
    break;
  }
  default: {
    // ...
    break;
  }
}
```

####Golden Path####

Preferred:
```
- (void)someMethod {
  if (![someOther boolValue]) {
     return;
  }

  //Do something important
}
```

Not Preferred:

```
- (void)someMethod {
  if ([someOther boolValue]) {
    //Do something important
  }
}
```

####Useful tips####

* Always use properties
* Use literals
* Use NS_ENUM for enums
* Use Anonymous categories fro private properties
* Conditional bodies should always use braces even when a conditional body could be written without braces (!!!)
* Any Xcode groups created should be reflected by folders in the filesystem
* Try to avoid nesting > 3
