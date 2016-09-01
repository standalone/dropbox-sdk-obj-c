///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESSharingInfo.h"
#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

@class DBFILESFileSharingInfo;

#pragma mark - API Object

///
/// The FileSharingInfo struct.
///
/// Sharing info for a file which is contained by a shared folder.
///
/// This class implements the DBSerializable protocol (serialize and deserialize instance methods),
/// which is required for all Obj-C SDK API route objects.
///
@interface DBFILESFileSharingInfo : DBFILESSharingInfo <DBSerializable>

#pragma mark - Instance fields

/// ID of shared folder that holds this file.
@property(nonatomic, readonly, copy) NSString * _Nonnull parentSharedFolderId;

/// The last user who modified the file. This field will be null if the user's account has been
/// deleted.
@property(nonatomic, readonly) NSString * _Nullable modifiedBy;

#pragma mark - Constructors

///
/// Full constructor for the DBFILESFileSharingInfo struct (exposes all instance variables).
///
/// @param readOnly True if the file or folder is inside a read-only shared folder.
/// @param parentSharedFolderId ID of shared folder that holds this file.
/// @param modifiedBy The last user who modified the file. This field will be null if the user's
/// account has been deleted.
///
/// @return An initialized DBFILESFileSharingInfo instance.
///
- (nonnull instancetype)initWithReadOnly:(NSNumber * _Nonnull)readOnly
                    parentSharedFolderId:(NSString * _Nonnull)parentSharedFolderId
                              modifiedBy:(NSString * _Nullable)modifiedBy;

///
/// Convenience constructor for the DBFILESFileSharingInfo struct (exposes only non-nullable
/// instance variables with no default value).
///
/// @param readOnly True if the file or folder is inside a read-only shared folder.
/// @param parentSharedFolderId ID of shared folder that holds this file.
///
/// @return An initialized DBFILESFileSharingInfo instance.
///
- (nonnull instancetype)initWithReadOnly:(NSNumber * _Nonnull)readOnly
                    parentSharedFolderId:(NSString * _Nonnull)parentSharedFolderId;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the FileSharingInfo struct.
///
@interface DBFILESFileSharingInfoSerializer : NSObject

///
/// Serializes DBFILESFileSharingInfo instances.
///
/// @param instance An instance of the DBFILESFileSharingInfo API object.
///
/// @return A json-compatible dictionary representation of the DBFILESFileSharingInfo API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESFileSharingInfo * _Nonnull)instance;

///
/// Deserializes DBFILESFileSharingInfo instances.
///
/// @param dict A json-compatible dictionary representation of the DBFILESFileSharingInfo API
/// object.
///
/// @return An instantiation of the DBFILESFileSharingInfo object.
///
+ (DBFILESFileSharingInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end