//
//  main.m
//  objcLine
//
//  Created by ylj on 2020/6/2.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Class newClass = objc_allocateClassPair(objc_getClass("NSObject"), "newClass", 0);
        objc_registerClassPair(newClass);
        id newObject = [[newClass alloc]init];
        NSLog(@"%s",class_getName([newObject class]));
        NSLog(@"Hello, World!");
    }
    return 0;
}
