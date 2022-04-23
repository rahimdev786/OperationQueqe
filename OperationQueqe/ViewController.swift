//
//  ViewController.swift
//  OperationQueqe
//
//  Created by arshad on 4/23/22.
//



/*
 
 OperationQueqe: this Perfome a task async with background thread
 
 example:
 opQueqe.addOperation {
     for i in 1...10{
         print("Data1 \(i)")
     }
 }
 
 
 Operation Block : its perform multiple task with block of code with async.
                   --> operaion Block is Queqe
                   --> final add this opertion block to Operation queqe because of execution code.
 
 
 Advantage: Add dependency Blocks (For serial Operations)
 
 */


import UIKit

class ViewController: UIViewController {

    let opQueqe = OperationQueue()
    
    let OPBlock = OperationQueue()
    let block1 = BlockOperation()
    let block2 = BlockOperation()
    let block3 = BlockOperation()
    let block4 = BlockOperation()
    
    
      
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        //Below are operation Queqe
//        Data1()
//        Data2()
//        Data3()
//        Data4()
 
        
        // Blocks Here and finally add block to operation Queqe
        
        block1.addExecutionBlock {
            for i in 100...300{
                print("block1 \(i)")
            }
        }
        
        
        block2.addExecutionBlock {
            for i in 100...300{
                print(" block2 \(i)")
            }

        }
        
        
        block3.addExecutionBlock {
            for i in 600...700{
                print("block3 \(i)")
            }
            
           
        }
        
        block4.addExecutionBlock {
            for i in 30...50{
                print("block4 \(i)")
            }
            
           
        }
        
        
        
        
        
        
        
        
        
        
        
        // Block are depend on another block (for serial operations)
        
        
        //Block 2 first Finish Here then Block1
        block1.addDependency(block2)
        
        //add here for operation Queqe
        OPBlock.addOperation(block1)
        OPBlock.addOperation(block2)
        OPBlock.addOperation(block3)
        OPBlock.addOperation(block4)
        
    }
}

extension ViewController{
    func Data1(){
        opQueqe.addOperation {
            for i in 1...10{
                print("Data1 \(i)")
            }
        }
    }
    
    
    func Data2(){
        opQueqe.addOperation {
            for i in 20...30{
                print("Data2 \(i)")
            }
        }
    }
    
    
    
    func Data3(){
        opQueqe.addOperation {
            for i in 40...50{
                print("Data3 \(i)")
            }
        }
    }
    

    
    func Data4(){
        opQueqe.addOperation {
            for i in 60...100{
                print("Data4 \(i)")
            }
        }
    }
}


