struct Solution;

impl Solution {
    pub fn count_hill_valley(nums: Vec<i32>) -> i32 {
        let v = nums
            .windows(2)
            .map(|w| {
                if w[0] == w[1] {
                    0
                } else if w[0] < w[1] {
                    1
                } else {
                    -1
                }
            })
            .filter(|n| *n != 0)
            .collect::<Vec<i32>>()
            .windows(2)
            .map(|w| if w[0] == w[1] { 0 } else { 1 })
            .filter(|n| *n != 0)
            .collect::<Vec<i32>>();
        // println!("#{:?}", nums);
        // println!("#{:?}", v);
        v.len() as i32
    }

    pub fn count_collisions(directions: String) -> i32 {
        // let size = directions.len();
        // let mut count = 0;
        let v = directions.chars();
        let vz = v.clone().zip(v);
        println!("#{:?}", vz);
        123
    }
}

fn tmp(_a: ()) {
    println!("tmpppp");
}
fn tmp2(_a: ()) -> () {
    println!("tmpppp");
}
fn tmp3() {
    println!("tmpppp");
}
enum E {}
fn tmp4(e: E) {
    let a = match e {};
    a
}

fn main() {
    // let nums = vec![2, 4, 1, 1, 6, 5];
    // println!("{:?}", Solution::count_hill_valley(nums));
    // let nums = vec![2, 3, 4, 2, 1, 1, 6, 5];
    // println!("{:?}", Solution::count_hill_valley(nums));
    let m = main;
    let t = tmp;
    let t2 = tmp2;
    let t3 = tmp3;
    let t4 = tmp4;
    let s = Solution::count_collisions;

    let directions = "RLRSLL".to_string();
    println!("{:?}", Solution::count_collisions(directions)); // 5
}
