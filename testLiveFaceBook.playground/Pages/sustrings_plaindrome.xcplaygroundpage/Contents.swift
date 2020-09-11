
import Foundation

func CountPS(str: [Character], n: Int)-> Int
{
    // create empty 2-D matrix that counts all palindrome
    // substring. dp[i][j] stores counts of palindromic
    // substrings in st[i..j]
    var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

   //  int dp[n][n];
   // memset(dp, 0, sizeof(dp));

    // P[i][j] = true if substring str[i..j] is palindrome,
    // else false
   var P =  [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
    //bool P[n][n];
    //memset(P, false , sizeof(P));

    // palindrome of single length
   // for (int i= 0; i< n; i++)
    for i in 0..<n {
        P[i][i] = true }

    // palindrome of length 2
        for i in 0..<n-1
    {
        if (str[i] == str[i+1])
        {
            P[i][i+1] = true;
            dp[i][i+1] = 1 ;
        }
    }

    // Palindromes of length more than 2. This loop is similar
    // to Matrix Chain Multiplication. We start with a gap of
    // length 2 and fill the DP table in a way that gap between
    // starting and ending indexes increases one by one by
    // outer loop.
        for gap in 2..<n
    {
        // Pick starting point for current gap
        for i in 0..<n-gap
        {
            // Set ending point
            var  j = gap + i;

            // If current string is palindrome
            if str[i] == str[j] && P[i+1][j-1]
            { P[i][j] = true }

            // Add current palindrome substring ( + 1)
            // and rest palindrome substring (dp[i][j-1] + dp[i+1][j])
            // remove common palindrome substrings (- dp[i+1][j-1])
            if P[i][j] == true {
                dp[i][j] = dp[i][j-1] + dp[i+1][j] + 1 - dp[i+1][j-1]
            } else  {
                dp[i][j] = dp[i][j-1] + dp[i+1][j] - dp[i+1][j-1]
            }
        }
    }

    // return total palindromic substrings
    return dp[0][n-1];
}

// Driver program
//
    var str = "abaab"
//    var n = str.count
////CountPS(str: Array(str), n: n)
//    //cout << CountPS(str, n) << endl;
//
//====================

func isPalindrome(_ arr: [Character]) -> Bool {
    
    let n = arr.count
    var  i = 0
    var j = n-1
    
    while i < n/2 && j >= n/2 {
        if arr[i] != arr[j] {
            return false
        } else {
            i += 1
            j -= 1
        }
        
    }
    
    return true
}

func countPalindrome (str: String) -> Int {
    
  let arrStr = Array(str)
    var tempStringArray = Set<String>()
    var countPalindrome = 0
    if arrStr.count <=  1 {
        return 0
    }
    for i in 0..<arrStr.count  {
        for j in i..<arrStr.count  {
            
            let strItem = String(arrStr[i...j])
            let input = arrStr[i...j]
            
            if !tempStringArray.contains(strItem) && !strItem.isEmpty{
                tempStringArray.insert(strItem)
 
            if  isPalindrome(Array(input)) {
                
                countPalindrome += 1
            }
            
        }
        }
    }
   return countPalindrome
}

countPalindrome(str: str)




for i in "kjdsh" {
    print(i)
}

var s = Array("aksjhd")
print(s)



