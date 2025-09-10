#if os(Linux)
// Minimal SwiftData stubs so the code builds on Linux

public protocol PersistentModel {}

public struct ModelContainer {
    public init(for _: [PersistentModel.Type]) {}
}

public struct ModelContext {
    public init(_ container: ModelContainer) {}
}

#endif
