// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCAnotationPhoto.m instead.

#import "_FJCAnotationPhoto.h"

const struct FJCAnotationPhotoAttributes FJCAnotationPhotoAttributes = {
	.photoData = @"photoData",
};

const struct FJCAnotationPhotoRelationships FJCAnotationPhotoRelationships = {
	.anotations = @"anotations",
};

@implementation FJCAnotationPhotoID
@end

@implementation _FJCAnotationPhoto

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AnotationPhoto" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AnotationPhoto";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AnotationPhoto" inManagedObjectContext:moc_];
}

- (FJCAnotationPhotoID*)objectID {
	return (FJCAnotationPhotoID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic photoData;

@dynamic anotations;

- (NSMutableSet*)anotationsSet {
	[self willAccessValueForKey:@"anotations"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"anotations"];

	[self didAccessValueForKey:@"anotations"];
	return result;
}

@end

