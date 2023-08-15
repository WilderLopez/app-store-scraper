import AppStoreScraper
import XCTest

final class ScraperTests: XCTestCase {
    func testGetTopFreeApps() async throws {
        let scraper = Scraper()
        let ranking = try await scraper.getRanking(.topFree, country: .EE, limit: 5)
        XCTAssertFalse(ranking.applications.isEmpty)
    }

    func testSearchApplications() async throws {
        let scraper = Scraper()
        let applications = try await scraper.searchApplications("pros and cons", language: .zh_Hans)
        XCTAssertFalse(applications.isEmpty)
    }

    func testGetApplication() async throws {
        let scraper = Scraper()
        let application = try await scraper.getApplication(668357845)
        XCTAssertNotNil(application)
    }
    
    func testGetReview() async throws {
        let scraper = Scraper()
        let review = try await scraper.getReview(668357845, page: 1, sortBy: .helpful)
        XCTAssertNotNil(review)
    }
}
