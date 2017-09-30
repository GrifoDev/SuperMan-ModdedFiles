.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShareErrorCodes;
.super Ljava/lang/Object;


# static fields
.field public static final HEADER_DUID_BAD_FORMAT:I = -0x40

.field public static final HEADER_DUID_REQUIRED:I = -0x3f

.field public static final RESULT_AUTH_CODE_INVALID_VALUE:I = -0x25

.field public static final RESULT_AUTH_ERROR:I = -0xd

.field public static final RESULT_BAD_ACCESS_TOKEN:I = -0x3

.field public static final RESULT_BAD_JSON_FORMAT:I = -0x2f

.field public static final RESULT_BAD_PHONE_NUMBER_FORMAT:I = -0x32

.field public static final RESULT_BAD_REQUEST:I = -0x7

.field public static final RESULT_CANCEL:I = 0x5

.field public static final RESULT_CANCELED_ALREADY:I = -0x8

.field public static final RESULT_CANT_ADD_ONESELF:I = -0x36

.field public static final RESULT_DB_DISK_FULL_ERROR:I = -0x45

.field public static final RESULT_DB_ERROR:I = -0x4

.field public static final RESULT_EACH_FILE_UPLOADED:I = 0x7

.field public static final RESULT_ERROR:I = -0x1

.field public static final RESULT_ERROR_UNAVAILABLE_RECIPIENTS:I = -0x25

.field public static final RESULT_ESU_AUTH_FAILURE:I = -0xf

.field public static final RESULT_EXCEED_CONTENT_LENGTH_LIMIT:I = -0x11

.field public static final RESULT_EXCEED_DAILY_UPLOAD_COUNT_LIMIT:I = -0x18

.field public static final RESULT_EXCEED_DAILY_UPLOAD_SIZE_LIMIT:I = -0x14

.field public static final RESULT_EXCEED_DOWNLOAD_COUNT:I = -0x13

.field public static final RESULT_EXCEED_DOWNLOAD_COUNT_AT_SAME_TIME:I = -0x19

.field public static final RESULT_EXCEED_UPLOAD_COUNT_LIMIT_PER_MEDIA:I = -0x22

.field public static final RESULT_FILE_INVALID:I = -0x15

.field public static final RESULT_FILE_IO_ERROR:I = -0x1e

.field public static final RESULT_FILE_NOT_FOUND:I = -0x6

.field public static final RESULT_FOLDER_TOKEN_INVALID:I = -0x2f

.field public static final RESULT_GROUP_ID_INVALID:I = -0x30

.field public static final RESULT_HEADER_APPID_REQUIRED:I = -0x39

.field public static final RESULT_HEADER_TIMEZONE_INVALID:I = -0x31

.field public static final RESULT_HEADER_TIMEZONE_REQUIRED:I = -0x2d

.field public static final RESULT_INVALID_ACCESS_TOKEN:I = -0x2e

.field public static final RESULT_INVALID_CONTENT_OR_RECIPIENT:I = -0x8e

.field public static final RESULT_INVALID_DOWNLOAD_PATH:I = -0x17

.field public static final RESULT_INVALID_GROUP_ID:I = -0x33

.field public static final RESULT_INVALID_OPERATION:I = -0x8d

.field public static final RESULT_INVALID_QUATA_TIMESTAMP:I = -0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_INVALID_RECIPIENTS:I = -0x8b

.field public static final RESULT_INVALID_RECIPIENT_OR_CONTENT:I = -0x41

.field public static final RESULT_LOCAL_TIMEOUT:I = -0xe

.field public static final RESULT_MAXIMUM_REQUEST_COUNT_EXCEEDS:I = -0x3c

.field public static final RESULT_MAXIMUM_SHARE_CONTENTS_EXCEEDS:I = -0x34

.field public static final RESULT_MAX_SHARE_NUMBER_EXCEEDS:I = -0x2c

.field public static final RESULT_NETWORK_ERROR:I = -0xc

.field public static final RESULT_NETWORK_TIMEOUT:I = -0x2

.field public static final RESULT_NOT_ALLOWED_OPERATION:I = -0x43

.field public static final RESULT_NOT_A_SHARE_MEMBER:I = -0x42

.field public static final RESULT_NOT_GENERATED_THUMBNAIL_IMAGE:I = -0x2a

.field public static final RESULT_NOT_REGISTERED_USER:I = -0x2b

.field public static final RESULT_NOT_SUPPORTED_CONTENT_TYPE:I = -0x12

.field public static final RESULT_NO_DATA:I = -0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_NO_NETWORK_CONNECTION:I = -0xa

.field public static final RESULT_NO_SUCH_CONTENT_TOKEN:I = -0x65

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_ORS_CLOSE_CONNECTION:I = -0x1f

.field public static final RESULT_ORS_FILE_NOT_EXISTS:I = -0x20

.field public static final RESULT_OUT_OF_DAILY_SERVER_UPLOAD_SIZE_LIMIT:I = -0x66

.field public static final RESULT_OUT_OF_SERVER_STORAGE:I = -0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_PARAMETER_CID_BAD_FORMAT:I = -0x38

.field public static final RESULT_PARAMETER_CID_REQUIRED:I = -0x37

.field public static final RESULT_PARAMETER_CONTENT_COUNT_BAD_FORMAT:I = -0x3e

.field public static final RESULT_PARAMETER_CONTENT_START_INVALID:I = -0x3d

.field public static final RESULT_PARAMETER_CONTENT_TOKEN_INVALID:I = -0x44

.field public static final RESULT_PARAMETER_MODIFIED_AFTER:I = -0x3a

.field public static final RESULT_PARAMETER_REQUEST_TYPE_REQUIRED:I = -0x3b

.field public static final RESULT_PAUSE:I = 0x4

.field public static final RESULT_PERMISSION_ERROR:I = -0x2e

.field public static final RESULT_PROGRESS:I = 0x2

.field public static final RESULT_PUBLIC_TOKEN_INVALID:I = -0x27

.field public static final RESULT_REMOVED_MEDIA:I = -0x21

.field public static final RESULT_RENAME_FAIL:I = -0x1a

.field public static final RESULT_REQUEST_QUEUE_NOT_INITIALIZED:I = -0x46

.field public static final RESULT_RESOURCE_DOESNOT_EXIST:I = -0x26

.field public static final RESULT_SERVER_ERROR:I = -0xb

.field public static final RESULT_SERVICE_DISABLED:I = -0x1b

.field public static final RESULT_SERVICE_STATUS_OFF:I = -0x35

.field public static final RESULT_SHARED_FILE_NOT_EXIST:I = -0x29

.field public static final RESULT_SHARE_SESSION_BUSY:I = -0x28

.field public static final RESULT_SIM_ABSENT:I = -0x24

.field public static final RESULT_START:I = 0x1

.field public static final RESULT_STARTED_ALREADY:I = -0x9

.field public static final RESULT_STOP:I = 0x3

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_UNAVAILABLE_RECIPIENTS:I = -0x89

.field public static final RESULT_UNEXPECTED_ERROR:I = -0x8a

.field public static final RESULT_UPLOAD_DONE:I = 0x6

.field public static final RESULT_WRONG_CONTACT_NUMBER:I = -0x23
