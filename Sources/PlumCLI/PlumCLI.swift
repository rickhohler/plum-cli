@main
public struct PlumCLI {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(PlumCLI().text)
    }
}
