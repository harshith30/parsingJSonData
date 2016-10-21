//
//  ViewController.m
//  parsingJsonData
//
//  Created by Harshith on 05/10/16.
//  Copyright © 2016 Harshith. All rights reserved.
//

#import "ViewController.h"
#import "AFHTTPSessionManager.h"

 NSString *example1Link = @"http://jsonplaceholder.typicode.com/albums";
 NSString *example2Link = @"http://jsonplaceholder.typicode.com/users";


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // In Json
    // [ ] means that it is an array
    // { } means that is a dictionary
    
    // In simulator
    // ( ) means that it is an array
    // { } means that is a dictionary
    
    [self usingAFNetworking];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) usingAFNetworking
{
    
    
    // Example 1 Using AFNetworking v 3.0 and simple JSon Format (albums)
    
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        [manager GET:example1Link parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
    
            self.data = responseObject;
            NSLog(@"data: %@", responseObject);
    
            // Now we will orint the 0th index value
    
            NSString *index0 = [self.data objectAtIndex:0];
            NSLog(@"0th Index data is found to be...: %@", index0);
    
            // Now we will print the 0th index values (id,title,userId)
    
            NSString *index0Id = [[self.data objectAtIndex:0] objectForKey:@"id"];
            NSString *index0Title = [[self.data objectAtIndex:0] objectForKey:@"title"];
            NSString *index0UserId = [[self.data objectAtIndex:0] objectForKey:@"userId"];
    
            NSLog(@"The id is %@ , the title is %@  and the user id is %@",index0Id,index0Title,index0UserId);
    
        }
 
    
    
    // Example 2 Using AFNetworking v 3.0 and  JSon Format (albums)
         
    
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    [manager GET:example2Link parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
//        
//        self.data = responseObject;
//        NSLog(@"data: %@", responseObject);
//        
//        // Now we will print the 0th index values
//        
//        NSString *index0 = [self.data objectAtIndex:0];
//        NSLog(@"0th Index data is found to be...: %@", index0);
//        
//        // Now we will print the 0th index id
//        NSString *index0Id = [[self.data objectAtIndex:0]objectForKey:@"id"];
//        NSLog(@"0th Index data is found to be...: %@", index0Id);
//        
//        // Now we will print the address
//        NSString *index0Address = [[self.data objectAtIndex:0]objectForKey:@"address"];
//        NSLog(@"Address is found to be...: %@", index0Address);
//        
//        // Now we will print the city name and geo location present within the Address
//        
//        NSString *index0City = [[[self.data objectAtIndex:0]objectForKey:@"address"] objectForKey:@"city"];
//        NSLog(@"City Name is found to be...: %@", index0City);
//        
//        
//        // Now we will print the geo location
//        NSString *geoLocation = [[[self.data objectAtIndex:0]objectForKey:@"address"]  objectForKey:@"geo"];
//        NSLog(@"Geo Location is found to be...: %@", geoLocation);
//        
//        // To print Latitude and Longitude values
//        
//        NSString *latiude = [[[[self.data objectAtIndex:0]objectForKey:@"address"]  objectForKey:@"geo"] objectForKey:@"lat"];
//        NSLog(@"Latitude value is found to be...: %@", latiude);
//        
//        NSString *longitude = [[[[self.data objectAtIndex:0]objectForKey:@"address"]  objectForKey:@"geo"] objectForKey:@"lng"];
//        NSLog(@"Latitude value is found to be...: %@", longitude);
//        
//    }
//
    
         
     // Common Failure block for both Example 1 and 2
     
     
         failure:^(NSURLSessionTask *operation, NSError *error) {
             NSLog(@"Error: %@", error);
         }];
    
}

@end
