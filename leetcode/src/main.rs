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
        let len = directions.len();
        let chars = directions.chars();
        let f_l = chars.clone().take_while(|x| *x == 'L').count();
        let e_r = chars.clone().rev().take_while(|x| *x == 'R').count();
        let mut charsv = chars.collect::<Vec<char>>();
        let d = f_l .. (len - e_r);
        let chars2 = charsv.drain(d);
        //println!("#{:?}", chars2);
        chars2.filter(|x| *x != 'S').count() as i32
    }

    pub fn maximum_bob_points(num_arrows: i32, alice_arrows: Vec<i32>) -> Vec<i32> {
        todo!()
    }
}

fn main() {
    // let nums = vec![2, 4, 1, 1, 6, 5];
    // println!("{:?}", Solution::count_hill_valley(nums));
    // let nums = vec![2, 3, 4, 2, 1, 1, 6, 5];
    // println!("{:?}", Solution::count_hill_valley(nums));

    // let directions = "RLRSLL".to_string();
    // println!("{:?}", Solution::count_collisions(directions)); // 5
    // let directions = "LLRR".to_string();
    // println!("{:?}", Solution::count_collisions(directions)); // 0

    let numArrows = 9;
    let aliceArrows = vec![1,1,0,1,0,0,2,1,0,1,2,0];
    println!("{:?}", Solution::maximum_bob_points(numArrows, aliceArrows)); // [0,0,0,0,1,1,0,0,1,2,3,1]

}
