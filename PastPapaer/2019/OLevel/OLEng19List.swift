//
//  OlevelList.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/7.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  LandmarkList: View {
@Environment(\.presentationMode) var presentationMode
@State var selected = 1
    
    var body: some View {
        
      
    NavigationView {
        
            
            VStack{
                Picker(selection: $selected, label: Text("")){
                       Text("May-Jun").tag(1)
                       Text("Oct-Nov").tag(2)
                   }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 10)
                //.frame(width: screen.width-24)
                
                if selected == 1{
                    LandmarkLististView1()
                }
                
                if selected == 2{
                    LandmarkLististView2()
                }
                
            }
            .navigationBarTitle(Text("2019"))
            .navigationBarItems(trailing: Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            })
        
                
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct LandmarkLististView1: View {
    var body: some View {
        List(landmarkData) { landmark in
            
            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
            }
             
        }
         
    }
}

struct LandmarkLististView2: View {
    var body: some View {
        List(landmarkData2) { landmark2 in
            
            NavigationLink(destination: LandmarkDetail2(landmark2: landmark2)) {
                LandmarkRow2(landmark2: landmark2)
            }
        }
        
    }
}

struct LandmarkDetail: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var landmark: Landmark

    var body: some View {
        VStack {
            Webview(url: (landmark.url))
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
        .navigationBarItems(trailing: shareButton)
        .popover(isPresented: $isActivityPopoverPresented, attachmentAnchor: .point(.topTrailing), arrowEdge: .top, content: activityView)
        .sheet(isPresented: $isActivitySheetPresented, content: activityView)
    }
    private var shareButton: some View {
        Button(action: {
            switch (self.horizontalSizeClass, self.verticalSizeClass) {
            case (.regular, .regular):
                self.isActivityPopoverPresented.toggle()
            default:
                self.isActivitySheetPresented.toggle()
            }
        }, label: {
            Image(systemName: "square.and.arrow.up")
             .font(.system(size: 20, weight: .medium))
             .frame(width: 35, height: 38)
             .hoverEffect(.automatic)
             .padding(.trailing, -5)
             .padding(.bottom, 5)
        })
    }
    
    private func activityView() -> some View {
        let url = URL(string: landmark.url)!
        let filename = url.pathComponents.last!
        let fileManager = FileManager.default
        let itemURL = fileManager.temporaryDirectory.appendingPathComponent(filename)
        let data: Data
        if fileManager.fileExists(atPath: itemURL.path) {
            data = try! Data(contentsOf: itemURL)
        } else {
            data = try! Data(contentsOf: url)
            fileManager.createFile(atPath: itemURL.path, contents: data, attributes: nil)
        }
        let activityView = ActivityView(activityItems: [itemURL], applicationActivities: nil)
        return Group {
            if self.horizontalSizeClass == .regular && self.verticalSizeClass == .regular {
                activityView.frame(width: 300, height: 480)
            } else {
                activityView
            }
        }
    }
}

 

struct LandmarkDetail2: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var landmark2: Landmark2

    var body: some View {
        VStack {
            Webview(url: (landmark2.url))
        }
        .navigationBarTitle(Text(landmark2.name), displayMode: .inline)
        .navigationBarItems(trailing: shareButton)
        .popover(isPresented: $isActivityPopoverPresented, attachmentAnchor: .point(.topTrailing), arrowEdge: .top, content: activityView)
        .sheet(isPresented: $isActivitySheetPresented, content: activityView)
    }
    private var shareButton: some View {
        Button(action: {
            switch (self.horizontalSizeClass, self.verticalSizeClass) {
            case (.regular, .regular):
                // ⚠️ IMPORTANT: `UIActivityViewController` must be presented in a popover on iPad:
                self.isActivityPopoverPresented.toggle()
            default:
                // ⚠️ IMPORTANT: `UIActivityViewController` must be presented in a popover on iPhone and iPod Touch:
                self.isActivitySheetPresented.toggle()
            }
        }, label: {
            Image(systemName: "square.and.arrow.up")
                .font(.system(size: 20, weight: .medium))
             .frame(width: 38, height: 38)
             .hoverEffect(.automatic)
             .padding(.trailing, -5)
             .padding(.bottom, 5)
        })
    }
    
    private func activityView() -> some View {
        let url = URL(string: landmark2.url)!
        let filename = url.pathComponents.last!
        let fileManager = FileManager.default
        let itemURL = fileManager.temporaryDirectory.appendingPathComponent(filename)
        let data: Data
        if fileManager.fileExists(atPath: itemURL.path) {
            data = try! Data(contentsOf: itemURL)
        } else {
            data = try! Data(contentsOf: url)
            fileManager.createFile(atPath: itemURL.path, contents: data, attributes: nil)
        }
        let activityView = ActivityView(activityItems: [itemURL], applicationActivities: nil)
        return Group {
            if self.horizontalSizeClass == .regular && self.verticalSizeClass == .regular {
                activityView.frame(width: 300, height: 480)
            } else {
                activityView
            }
        }
    }
}


struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            Text(landmark.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct LandmarkRow2: View {
    var landmark2: Landmark2

    var body: some View {
        HStack {
            Text(landmark2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct  LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

extension UIApplication {

    func visibleViewController() -> UIViewController? {
        guard let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else { return nil }
        guard let rootViewController = window.rootViewController else { return nil }
        return UIApplication.getVisibleViewControllerFrom(vc: rootViewController)
    }

private static func getVisibleViewControllerFrom(vc:UIViewController) -> UIViewController {
        if let navigationController = vc as? UINavigationController,
            let visibleController = navigationController.visibleViewController  {
            return UIApplication.getVisibleViewControllerFrom( vc: visibleController )
        } else if let tabBarController = vc as? UITabBarController,
            let selectedTabController = tabBarController.selectedViewController {
            return UIApplication.getVisibleViewControllerFrom(vc: selectedTabController )
        } else {
            if let presentedViewController = vc.presentedViewController {
                return UIApplication.getVisibleViewControllerFrom(vc: presentedViewController)
            } else {
                return vc
            }
        }
    }
}

struct DisableModalDismiss: ViewModifier {
    let disabled: Bool
    func body(content: Content) -> some View {
        disableModalDismiss()
        return AnyView(content)
    }

    func disableModalDismiss() {
        guard let visibleController = UIApplication.shared.visibleViewController() else { return }
        visibleController.isModalInPresentation = disabled
    }
}

class RemoteURLActivityItemProvider : UIActivityItemProvider {
    let remoteURL: URL
    private var urlSession: URLSession
    private var fileManager: FileManager
    private var semaphore: DispatchSemaphore?

    init(url: URL, urlSession: URLSession = .shared, fileManager: FileManager = .default) {
        self.remoteURL = url
        self.urlSession = urlSession
        self.fileManager = fileManager
        super.init(placeholderItem: url)
    }

    override var item: Any {
        guard let filename = remoteURL.pathComponents.last else { return super.item }
        
        // ✅ Return existing data from the user's temp directory, if previously saved:
        let itemURL = fileManager.temporaryDirectory.appendingPathComponent(filename)
        if fileManager.fileExists(atPath: itemURL.path) {
            return try! Data(contentsOf: itemURL)
        }
        
        // ✅ Use a semaphore to make the async data task blocking task:
        var localData: Data?
        semaphore = DispatchSemaphore(value: 0)
        let task = urlSession.dataTask(with: remoteURL) { [weak weakSelf = self] data, response, error in
            defer { weakSelf?.semaphore?.signal() }
            guard let strongSelf = weakSelf, let remoteData = data else { return }

            // ✅ Create (or overwrite) the data to the user's temp directory:
            strongSelf.fileManager.createFile(atPath: itemURL.path, contents: remoteData, attributes: nil)
            localData = try! Data(contentsOf: itemURL)
        }

        task.resume()
        semaphore?.wait()
        semaphore = nil

        // ✅ Return the stored data from the user's temp directory:
        if let item = localData {
            return item
        }

        task.cancel()
        return super.item
    }

    override func cancel() {
        semaphore?.signal()
        super.cancel()
    }
}

struct ActivityView: UIViewControllerRepresentable {
    typealias CompletionWithItemsHandler = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
    
    var activityItems: [Any]
    var applicationActivities: [UIActivity]?
    let excludedActivityTypes: [UIActivity.ActivityType]? = nil
    let completion: CompletionWithItemsHandler? = nil
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        controller.excludedActivityTypes = excludedActivityTypes
        controller.completionWithItemsHandler = completion
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // no-op
    }
}
