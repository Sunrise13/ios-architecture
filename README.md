# iOS app architecture

####Application (folder)####
* AppDelegate.swift 	
* Constants.swift 	
* Bridging-Header.h 
* Info.plist

####Core (folder - business logic)####
* Network (folder)
  * RequestManager.swift - class that we use to send requests
  * RequestGenerator.swift - class that we use to create (POST, GET, PUT, DELETE) (we don’t need it if we use some 3rd party lib)
  * ResponseManager.swift - class that handles response from service
  * CustomURLManager.swift - class for generation URLS
  * ParamGenerator.swift - class for creating params for requests
 
####Database (folder)####
* DatabaseManager.swift - wrapper over DB. That will let us replace DB without problems if we need it (f.e. replace CoreData with Realm) 
* CoreData (folder)
  * Entities (folder) - NSManagedObjects
  * CoreDataManager - class that works with CoreData
*ProjectName*.xcdatamodeld

* Filemanager (folder)
* Global.swift (app singleton)
* etc

####Controllers (folder)####
* Controllers/Home (folder) contains
  * HomeVC.swift
  * HomeVM.swift

######Hints######
- Name should be: *Controller*VC
- Each VC should contain code that is responsible for UI
- Each VC should have VM (view model) class, that will contain all business logic. Use delegation to communicate with VC
- Separate VC+VM by folder.

####Models (folder)####
* Models/User (folder) contains
 * User.swift
 * User+Convert.swift

######Hints######
- Each model in separate folder
- If we need some more functionality, add extension to model
 
####UI (folder)####
* CustomCells (folders with 2 files (*Classname*.swift + *Classname*.xib))
* CustomViews (folders with 2 files (*Classname*.swift + *Classname*.xib))
* Storyboards

####Resources (folder)####
* Localization
* Fonts
* etc

####Extensions (folder - contains extensions for exist classes)####

####3rdParty  (folder - contains 3rd party code)####
