
let array = [-2, -3, 4, -1, -2, 1, 5, -3];

function maxSubArray() {
    let max = array[0];
    let cur = 0;
    for (let i = 0; i < array.length; i++) {
        if (cur < 0) {
            cur = 0;
        }
        cur += array[i];
        max = Math.max(max, cur);
    }
    return max;
}
document.write(maxSubArray());

