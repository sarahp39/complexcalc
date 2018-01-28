//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs:Int) -> Int{
        let total = lhs+rhs;
        return total;
    }
    func add (_ args: [Int]) -> Int{
        var total = 0;
        for i in args{
            total += i;
        }
        return total;
    }
    func add (lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int){
        var total = (0,0);
        total.0 = lhs.0 + rhs.0;
        total.1 = lhs.1 + rhs.1;
        return total;
    }
    func add (lhs: [String: Int], rhs: [String: Int]) -> [String: Int]{
        var total = ["x": 0, "y": 0];
        total["x"] = lhs["x"]! + rhs["x"]!;
        total["y"] = lhs["y"]! + rhs["y"]!;
        return total;
    }
    func subtract(lhs: Int, rhs: Int) -> Int{
        let total = lhs-rhs;
        return total;
    }
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int){
        var total = (0,0);
        total.0 = lhs.0 - rhs.0;
        total.1 = lhs.1 - rhs.1;
        return total;
    }
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int]{
        var total = ["x": 0, "y": 0];
        total["x"] = lhs["x"]! - rhs["x"]!;
        total["y"] = lhs["y"]! - rhs["y"]!;
        return total;
    }
    func multiply(lhs: Int, rhs: Int) -> Int{
        let total = lhs*rhs;
        return total
    }
    func multiply(_ args: [Int]) -> Int{
        var total = 1;
        for i in args{
            total *= i;
        }
        return total;
    }
    func divide(lhs: Int, rhs: Int) -> Int{
        let total = lhs/rhs;
        return total;
    }
    func count(_ args: [Int]) -> Int{
        var total = 0;
        for _ in args{
            total += 1;
        }
        return total;
    }
    func avg(_ args: [Int]) -> Int{
        var total = self.add(args);
        let counter = self.count(args);
        total = total/counter;
        return total;
    }
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        let total = op(lhs,rhs);
        return total;
    }
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int{
        var total = beg;
        for i in args{
            total = op(i , total);
        }
        return total;
    }
    
}
