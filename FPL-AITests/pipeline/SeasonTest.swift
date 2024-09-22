import XCTest
@testable import FPL_AI

final class SeasonTest: XCTestCase {
    
    var testSeason = Season()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        testSeason = Season()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func dateFrom(dateString: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.date(from: dateString)!
    }

    func testShoulReturn2425ForThe2024To2025Season() throws {
        let date = dateFrom(dateString: "2024-09-21")
        let season = testSeason.getSeason(date: date)
        XCTAssertEqual("2425", season)
    }
    
    func testShoulReturn2324ForThe2023To2024Season() throws {
        let date = dateFrom(dateString: "2023-09-21")
        let season = testSeason.getSeason(date: date)
        XCTAssertEqual("2324", season)
    }
    
    func testShouldReturn2324GivenTheEndOfTheSeason() throws {
        let date = dateFrom(dateString: "2024-05-17")
        let season = testSeason.getSeason(date: date)
        XCTAssertEqual("2324", season)
    }
    
    func testShouldReturn2018GivenSeasonString1819() throws {
        let season = "1819"
        let year = testSeason.yearFrom(seasonString: season)
        XCTAssertEqual(2018, year)
    }
    
    func testShouldReturn2010GivenSeasonString1011() throws {
        let season = "1011"
        let year = testSeason.yearFrom(seasonString: season)
        XCTAssertEqual(2010, year)
    }

}
