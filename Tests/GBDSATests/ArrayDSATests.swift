import Testing
import GBDSA

struct ArrayDSATests {
    let sut = ArrayDSA()
    
    @Test
    func removeEvenNumber() {
        let expectedArray1 = [1,3,5,7,9]
        let result1 = sut.removeEvenNumber(from: [1,2,3,4,5,6,7,8,9])
        #expect(expectedArray1 == result1)
        
        let result2 = sut.removeEvenNumber(from: [])
        #expect([] == result2)
        
        let result3 = sut.removeEvenNumber(from: [1])
        #expect([1] == result3)
        
        let result4 = sut.removeEvenNumber(from: [1, 3, 5])
        #expect([1, 3, 5] == result4)
        
        let result5 = sut.removeEvenNumber(from: [2, 4, 6])
        #expect([] == result5)
    }
    
    @Test
    func removeOddNumber() {
        let expectedArray1 = [2,4,6,8]
        let result1 = sut.removeOddNumber(from: [1,2,3,4,5,6,7,8,9])
        #expect(expectedArray1 == result1)
        
        let result2 = sut.removeOddNumber(from: [])
        #expect([] == result2)
        
        let result3 = sut.removeOddNumber(from: [2])
        #expect([2] == result3)
        
        let result4 = sut.removeOddNumber(from: [2, 4, 6])
        #expect([2, 4, 6] == result4)
        
        let result5 = sut.removeOddNumber(from: [1, 3, 5])
        #expect([] == result5)
    }
    
    @Test
    func reverseTheArray() {
        let expectedArray1 = [123, 678, 467, 345, 234, 123, 6, 5, 8, 6, 4, 2]
        let result = sut.reverseArrayBasic([2,4,6,8,5,6,123,234,345,467,678,123])
        #expect(expectedArray1 == result)
        
        let resultImproved = sut.reverseArrayImproved([2,4,6,8,5,6,123,234,345,467,678,123])
        #expect(expectedArray1 == resultImproved)
        
        let result2 = sut.reverseArrayBasic([]) as? [Int]
        #expect([] == result2)
        
        let result2Improved = sut.reverseArrayImproved([]) as? [Int]
        #expect([] == result2Improved)
        
        let result3 = sut.reverseArrayBasic([2])
        #expect([2] == result3)
        
        let result3Improved = sut.reverseArrayImproved([2])
        #expect([2] == result3Improved)
        
        let result4 = sut.reverseArrayBasic([2, 4, 6])
        #expect([6, 4, 2] == result4)
        
        let result4Improved = sut.reverseArrayImproved([2, 4, 6])
        #expect([6, 4, 2] == result4Improved)
    }
}
