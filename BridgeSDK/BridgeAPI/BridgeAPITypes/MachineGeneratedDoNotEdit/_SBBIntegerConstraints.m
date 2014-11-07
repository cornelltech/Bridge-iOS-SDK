//
//  SBBIntegerConstraints.m
//
//  $Id$
//
// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SBBIntegerConstraints.h instead.
//

#import "_SBBIntegerConstraints.h"
#import "NSDate+SBBAdditions.h"

@interface _SBBIntegerConstraints()

@end

/** \ingroup DataModel */

@implementation _SBBIntegerConstraints

- (instancetype)init
{
	if((self = [super init]))
	{

	}

	return self;
}

#pragma mark Scalar values

- (int64_t)maxValueValue
{
	return [self.maxValue longLongValue];
}

- (void)setMaxValueValue:(int64_t)value_
{
	self.maxValue = [NSNumber numberWithLongLong:value_];
}

- (int64_t)minValueValue
{
	return [self.minValue longLongValue];
}

- (void)setMinValueValue:(int64_t)value_
{
	self.minValue = [NSNumber numberWithLongLong:value_];
}

- (int64_t)stepValue
{
	return [self.step longLongValue];
}

- (void)setStepValue:(int64_t)value_
{
	self.step = [NSNumber numberWithLongLong:value_];
}

#pragma mark Dictionary representation

- (instancetype)initWithDictionaryRepresentation:(NSDictionary *)dictionary objectManager:(id<SBBObjectManagerProtocol>)objectManager
{
  if((self = [super initWithDictionaryRepresentation:dictionary objectManager:objectManager]))
	{

        self.maxValue = [dictionary objectForKey:@"maxValue"];

        self.minValue = [dictionary objectForKey:@"minValue"];

        self.step = [dictionary objectForKey:@"step"];

	}

	return self;
}

- (NSDictionary *)dictionaryRepresentationFromObjectManager:(id<SBBObjectManagerProtocol>)objectManager
{
  NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary:[super dictionaryRepresentationFromObjectManager:objectManager]];

    [dict setObjectIfNotNil:self.maxValue forKey:@"maxValue"];

    [dict setObjectIfNotNil:self.minValue forKey:@"minValue"];

    [dict setObjectIfNotNil:self.step forKey:@"step"];

	return dict;
}

- (void)awakeFromDictionaryRepresentationInit
{
	if(self.sourceDictionaryRepresentation == nil)
		return; // awakeFromDictionaryRepresentationInit has been already executed on this object.

	[super awakeFromDictionaryRepresentationInit];
}

#pragma mark Direct access

@end
