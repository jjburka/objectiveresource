//
//  DataFormatter.m
//  iphone-harvest
//
//  Created by James Burka on 10/21/08.
//  Copyright 2008 Burkaprojects. All rights reserved.
//

#import "DataFormatter.h"


@implementation DataFormatter

static DataFormatter * sharedDataFormatter = nil;


#pragma mark DataFormatter singleton pattern

+ (DataFormatter *)sharedManager {
	
	@synchronized(self) {
		
		if (sharedDataFormatter == nil) {
			[[self alloc] init];
		}
		
	}
	return sharedDataFormatter;
	
}

-(id)init {
	self = [super init];
	sharedDataFormatter = self;
	
	dateFormatters = [ NSMutableDictionary dictionary];
	
	return self;
	
}
+ (id) allocWithZone:(NSZone *)zone
{
	
	@synchronized(self) {
		
		if (sharedDataFormatter == nil) {
			
			sharedDataFormatter = [super allocWithZone:zone];
			return sharedDataFormatter;
		}
		return nil;
	}
	
}

- (id)copyWithZone:(NSZone *) zone {
	return self;
}

- (id)retain {
	return self;
}

-(unsigned)retainCount
{
	return NSIntegerMax;
}

-(void) release {
	
}

- (id) autorelease {
	return self;
}


#pragma mark DataFormatter methods
	

-(void) setDataFormatter:(NSFormatter *)aFormatter forType:(NSString *)aType {
	
	[dateFormatters setObject:[aFormatter] forKey:aType];
}

-(NSFormatter *)getDataFormatterForType:(NSString *)aType {
	
	return [dateFormatters objectForKey:aType];	
}


@end
