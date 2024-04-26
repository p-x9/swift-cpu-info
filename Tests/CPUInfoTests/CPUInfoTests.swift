import XCTest
@testable import CPUInfo
import SwiftSysctl

final class CPUInfoTests: XCTestCase {
    func test() throws {
        CPUInfo.print()
    }
}
