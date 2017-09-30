.class public Lcom/samsung/android/sdk/ssf/file/server/FileServerResultCode;
.super Lcom/samsung/android/sdk/ssf/common/model/ResultCode;


# static fields
.field public static final RESULT_AUTH_CODE_INVALID_VALUE:I = -0x25

.field public static final RESULT_ERROR:I = -0x1

.field public static final RESULT_EXCEED_CONTENT_LENGTH_LIMIT:I = -0x11

.field public static final RESULT_EXCEED_DAILY_UPLOAD_COUNT_LIMIT:I = -0x18

.field public static final RESULT_EXCEED_DAILY_UPLOAD_SIZE_LIMIT:I = -0x14

.field public static final RESULT_EXCEED_DOWNLOAD_COUNT:I = -0x13

.field public static final RESULT_EXCEED_DOWNLOAD_COUNT_AT_SAME_TIME:I = -0x19

.field public static final RESULT_EXCEED_UPLOAD_COUNT_LIMIT_PER_MEDIA:I = -0x22

.field public static final RESULT_FILE_INVALID:I = -0x15

.field public static final RESULT_FILE_IO_ERROR:I = -0x1e

.field public static final RESULT_INVALID_DOWNLOAD_PATH:I = -0x17

.field public static final RESULT_INVALID_QUATA_TIMESTAMP:I = -0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_NOT_SUPPORTED_CONTENT_TYPE:I = -0x12

.field public static final RESULT_ORS_CLOSE_CONNECTION:I = -0x1f

.field public static final RESULT_ORS_FILE_NOT_EXISTS:I = -0x20

.field public static final RESULT_OUT_OF_DAILY_SERVER_UPLOAD_SIZE_LIMIT:I = -0x66

.field public static final RESULT_OUT_OF_SERVER_STORAGE:I = -0x10

.field public static final RESULT_PUBLIC_TOKEN_INVALID_VALUE:I = -0x27

.field public static final RESULT_REMOVED_MEDIA:I = -0x21

.field public static final RESULT_RENAME_FAIL:I = -0x1a

.field public static final RESULT_RESOURCE_DOESNOT_EXIST:I = -0x26

.field public static final RESULT_SERVICE_DISABLED:I = -0x1b

.field public static final RESULT_SIM_ABSENT:I = -0x24

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_WRONG_CONTACT_NUMBER:I = -0x23


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/model/ResultCode;-><init>()V

    return-void
.end method
