# TestCrashlytics
Firebase Crashlytics
  # Pods for TestCrashlytics
  pod 'Firebase/Analytics'
  pod 'Fabric'
  pod 'Crashlytics'


//Setup Firebase Crashlytics
Step 1: Set up Crashlytics in the Firebase console
Step 2: Add the Crashlytics SDK
        # Pods for PodTest
        pod 'Fabric' 
        pod 'Crashlytics' 

        # (Recommended) Pod for Google Analytics
        pod 'Firebase/Analytics'

        pod install

Step 3: Initialize Crashlytics
Select a project or target
Open the target's Build Phases tab.
Click + Add a new build phase, then select New Run Script Phase.
""${PODS_ROOT}/Fabric/run""

 Build Phase's Input Files
$(SRCROOT)/$(BUILT_PRODUCTS_DIR)/$(INFOPLIST_PATH)


Step 4: Set the Debug Information Format setting to DWARF with dSYM File.
    1. With your project still selected in the Xcode Navigator, open the Build Settings tab.
    2. Click All at the top of the tab to display all build settings.
    3. Search for ""debug information format"".
    4. Set the Debug Information Format setting to DWARF with dSYM File.


"
"Crashlytics
Logs and key value pairs (Custom keys)
1. Logs - to pin point issues.  Can store up to 64KB of logs before crash happens
2. key value pairs (custom keys) - Help get specific state of the apps leading to the crash
3. Record non-fatal exceptions


//Logs to pin point issues 
Func write(string: String) {
        CLSLogv(“%@”, getValList([string]))
}

//Key value pair:
Crashlytics.sharedInstance().setIntValue (42, forKey: “MeaningOfLife”)
Crashlytics.shareInstance.setObjectValue(“Test Value” forKey: “last_UI_action”


//Record non-fatal exceptions
Crashlytics.sharedInstance().recordError(error
"
