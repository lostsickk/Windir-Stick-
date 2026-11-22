import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        MenuWebView()
            .ignoresSafeArea()
            .preferredColorScheme(.dark)
    }
}

struct MenuWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let web = WKWebView()
        web.isOpaque = false
        web.backgroundColor = UIColor.black
        web.scrollView.backgroundColor = UIColor.black
        web.scrollView.bounces = false
        if let page = Bundle.main.url(forResource: "index", withExtension: "html") {
            web.loadFileURL(page, allowingReadAccessTo: page.deletingLastPathComponent())
        }
        return web
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
