class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numToIndex: [Int: Int] = [:]
        
        for (i, num) in nums.enumerated() {
            let complement = target - num
            if let index = numToIndex[complement] {
                return [index, i]
            }
            numToIndex[num] = i
        }
        
        return []
    }
}
