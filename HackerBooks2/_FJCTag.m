// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCTag.m instead.

#import "_FJCTag.h"

const struct FJCTagAttributes FJCTagAttributes = {
	.proxyForSorting = @"proxyForSorting",
	.tagName = @"tagName",
};

const struct FJCTagRelationships FJCTagRelationships = {
	.bookTags = @"bookTags",
};

@implementation FJCTagID
@end

@implementation _FJCTag

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Tag" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Tag";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Tag" inManagedObjectContext:moc_];
}

- (FJCTagID*)objectID {
	return (FJCTagID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic proxyForSorting;

@dynamic tagName;

@dynamic bookTags;

- (NSMutableSet*)bookTagsSet {
	[self willAccessValueForKey:@"bookTags"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"bookTags"];

	[self didAccessValueForKey:@"bookTags"];
	return result;
}

@end

