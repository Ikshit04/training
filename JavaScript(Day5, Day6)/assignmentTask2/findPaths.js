let m, n;

let promise = new Promise(function (resolve, reject) {
    m = prompt('Enter value for m');
    n = prompt('Enter value for n');
    if (m >= 1 && n >= 1 && m < 10000 && n < 10000) {
        resolve();
    }
    else reject("Please enter the value between 1 & 10000")
});

let dp = Array(10000).fill(0).map(x => Array(10000).fill(0));

function findPossiblePaths(a, b) {
    if (a == 1 || b == 1) {
        dp[a][b] = 1;
    }
    if (dp[a][b] == 0) {
        dp[a][b] = findPossiblePaths(a - 1, b) + findPossiblePaths(a, b - 1);
    }
    return dp[a][b];
}
promise.then(() => document.write(findPossiblePaths(m, n))).catch(
    function (message) {
        alert(message);
    });

