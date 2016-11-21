
import Foundation

enum KeychainOperation {
    case BasicSave(String, String)
    case BasicLoad(String)
}

var operation: KeychainOperation?

let args = Process.arguments.dropFirst()

switch args.count {
case 1:
    operation = .BasicLoad(args[1])
case 2:
    operation = .BasicSave(args[1], args[2])
default:
    break
}

guard let operation = operation else {
    print("Usage: pass one string key to load, or a string key and a string value to save")
    exit(1)
}

switch operation {

case .BasicSave(let key, let value):
    if !Keychain.save(value, forKey: key) {
        fputs("basic save failed", stderr)
        exit(2)
    }

case .BasicLoad(let key):
    if let value = Keychain.load(key) {
        print("\(value)")
    } else {
        fputs("key \(key) could not be read from keychain", stderr)
        exit(3)
    }
}
