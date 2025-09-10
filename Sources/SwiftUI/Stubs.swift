#if os(Linux)
// Minimal SwiftUI stubs so code completion works on Linux

@resultBuilder
public enum ViewBuilder {
    public static func buildBlock<T>(_ components: T...) -> [T] { components }
}

// A protocol to represent any SwiftUI "View"
public protocol View {}

// A few common views
public struct Text: View {
    public init(_ content: String) {}
}

public struct VStack<Content>: View {
    public init(alignment: String = "center",
                spacing: Double? = nil,
                @ViewBuilder content: () -> Content) {}
}

public struct HStack<Content>: View {
    public init(alignment: String = "center",
                spacing: Double? = nil,
                @ViewBuilder content: () -> Content) {}
}

public struct ZStack<Content>: View {
    public init(alignment: String = "center",
                @ViewBuilder content: () -> Content) {}
}

public struct Button<Label>: View {
    public init(action: @escaping () -> Void,
                @ViewBuilder label: () -> Label) {}
}

// App protocol stub
public protocol App {
    associatedtype Body: Scene
    var body: Body { get }
}

// Scene stub
public protocol Scene {}

// A basic WindowGroup stub
public struct WindowGroup<Content>: Scene {
    public init(@ViewBuilder content: () -> Content) {}
}

#endif
