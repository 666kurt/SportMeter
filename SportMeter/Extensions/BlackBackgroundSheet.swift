import SwiftUI

// Вью, меняющая цвет фона под sheet

struct FullScreenBlackBackground: View {
    @Binding var isPresented: Bool

    var body: some View {
        ZStack {
            if isPresented {
                Color.black.opacity(0.5)
                    .edgesIgnoringSafeArea(.all)
                    .animation(.easeInOut, value: isPresented)
            }
        }
    }
}

//struct BlackBackgroundSheet<Content: View>: UIViewControllerRepresentable {
//    let content: Content
//
//    init(@ViewBuilder content: () -> Content) {
//        self.content = content()
//    }
//
//    func makeUIViewController(context: Context) -> UIViewController {
//        let controller = UIViewController()
//        let hostingController = UIHostingController(rootView: content)
//        hostingController.view.backgroundColor = .clear
//        
//        controller.view.backgroundColor = .black
//        controller.view.addSubview(hostingController.view)
//        
//        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            hostingController.view.topAnchor.constraint(equalTo: controller.view.topAnchor),
//            hostingController.view.bottomAnchor.constraint(equalTo: controller.view.bottomAnchor),
//            hostingController.view.leadingAnchor.constraint(equalTo: controller.view.leadingAnchor),
//            hostingController.view.trailingAnchor.constraint(equalTo: controller.view.trailingAnchor)
//        ])
//        
//        return controller
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
//}
