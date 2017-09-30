.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$ContentsView;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Address;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$SendResult;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupColumn;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$ContentsViewColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$RecentContactColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$BlockColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$MediaColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$ContentColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$ChunkColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$SendResultColumns;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$AddressColumns;
    }
.end annotation


# static fields
.field public static final APP_RSHARE:Ljava/lang/String; = "remoteshare"

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.rshare"

.field public static final DIRTY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOWNLOAD_DIR_NAME:Ljava/lang/String; = "Download"

.field public static final EXTRA_CONTENT_ID:Ljava/lang/String; = "extra_content_id"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "extra_error_code"

.field public static final EXTRA_ERROR_DETAIL:Ljava/lang/String; = "extra_error_detail"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "extra_error_message"

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "extra_file_name"

.field public static final EXTRA_MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final EXTRA_MEDIA_SIZE:Ljava/lang/String; = "extra_media_size"

.field public static final EXTRA_PROCESSED_URL:Ljava/lang/String; = "extra_processed_url"

.field public static final EXTRA_PROGRESS_CONTENT_DATA:Ljava/lang/String; = "extra_progress_content_data"

.field public static final EXTRA_PROGRESS_FILE_BYTES:Ljava/lang/String; = "extra_progress_byte"

.field public static final EXTRA_PROGRESS_FILE_COUNT:Ljava/lang/String; = "extra_progress_file_count"

.field public static final EXTRA_PROGRESS_FILE_NAME:Ljava/lang/String; = "extra_progress_file_name"

.field public static final EXTRA_PROGRESS_MEDIA_BYTES:Ljava/lang/String; = "extra_progress_media_bytes"

.field public static final EXTRA_PROGRESS_TOTAL_DOWNLOAD_BYTES:Ljava/lang/String; = "extra_progress_total_download_bytes"

.field public static final EXTRA_PROGRESS_TOTAL_DOWNLOAD_LENGTH:Ljava/lang/String; = "extra_progress_total_download_length"

.field public static final EXTRA_PROGRESS_TOTAL_FILE_COUNT:Ljava/lang/String; = "extra_progress_total_file_count"

.field public static final EXTRA_PROGRESS_TOTAL_FILE_LENGTH:Ljava/lang/String; = "extra_progress_total_file_length"

.field public static final EXTRA_REMOTE_URL:Ljava/lang/String; = "extra_remote_url"

.field public static final EXTRA_REQ_TOKEN:Ljava/lang/String; = "extra_req_token"

.field public static final IGNORE_PATTERN:Ljava/lang/String; = "[\\*:?|\"<>\\\\/+]"

.field public static final NON_DIRTY:I = 0x0

.field public static final NOT_EXIST_COLUMN:I = -0x1

.field public static final PAUSED_BY_NETWORK:I = 0x1

.field public static final PAUSED_BY_ON_PROGRESS:I = 0x0

.field public static final PAUSED_BY_USER:I = 0x2

.field public static final PERMISSION_READ_MEDIA_OLD:Ljava/lang/String; = "com.sec.orca.remoteshare.permission.READ_MEDIA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERMISSION_WRITE_MEDIA_OLD:Ljava/lang/String; = "com.sec.orca.remoteshare.permission.WRITE_MEDIA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPLACE_CHARACTER:Ljava/lang/String; = "_"

.field public static final SERVICE_ID:I = 0x2

.field public static final SERVICE_ID_ONCIRCLE:I = 0x5

.field public static final STATUS_CANCEL:Ljava/lang/String; = "Cancel"

.field public static final STATUS_DONE:Ljava/lang/String; = "Done"

.field public static final STATUS_ERROR:Ljava/lang/String; = "Error"

.field public static final STATUS_PAUSE:Ljava/lang/String; = "Pause"

.field public static final STATUS_UPLOADING:Ljava/lang/String; = "Uploading"

.field public static final STATUS_WAITING:Ljava/lang/String; = "Waiting"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TOKEN_ACTIVATE:I = 0x3f0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN_IND_INCOMING_MEDIA:I = 0x3ec

.field public static final TOKEN_PAUSE_ALL:I = 0xbb8

.field public static final TOKEN_REQ_ADD_SHARE:I = 0x7da

.field public static final TOKEN_REQ_CANCEL:I = 0x7d3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN_REQ_CANCEL_DOWNLOAD:I = 0x7d7

.field public static final TOKEN_REQ_CANCEL_UPLOAD:I = 0x7d6

.field public static final TOKEN_REQ_DOWNLOAD:I = 0x7d1

.field public static final TOKEN_REQ_GET_ALL_NOTI:I = 0x3ed

.field public static final TOKEN_REQ_PAUSE:I = 0x7d2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN_REQ_PAUSE_DOWNLOAD:I = 0x7d5

.field public static final TOKEN_REQ_PAUSE_UPLOAD:I = 0x7d4

.field public static final TOKEN_REQ_SEND_MEDIA:I = 0x7d0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN_REQ_SEND_PUSH:I = 0x1389

.field public static final TOKEN_REQ_SHARE:I = 0x7d9

.field public static final TOKEN_REQ_UPLOAD:I = 0x7d8

.field public static final TOKEN_RESP_FORCE_AUTH:I = 0x3ea
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN_RESP_GET_SERVER_INFO:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN_RESP_REGISTER_DEVICE:I = 0x3e9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN_RESP_SPP_REG_DONE:I = 0x3eb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN_RESULT_ESU_AUTH:I = 0x3ee

.field public static final TOKEN_RESULT_ESU_DEAUTH:I = 0x3f1

.field public static final TOKEN_TIMEOUT:I = 0x3ef

.field public static final TYPE_INDEX_FROM_PUSH:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static result2str(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "RESULT_SERVER_ERROR"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "RESULT_CANCEL"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESULT_PAUSE"

    goto :goto_0

    :pswitch_3
    const-string v0, "RESULT_STOP"

    goto :goto_0

    :pswitch_4
    const-string v0, "RESULT_PROGRESS"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESULT_START"

    goto :goto_0

    :pswitch_6
    const-string v0, "RESULT_OK"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESULT_ERROR"

    goto :goto_0

    :pswitch_8
    const-string v0, "RESULT_NETWORK_TIMEOUT"

    goto :goto_0

    :pswitch_9
    const-string v0, "RESULT_BAD_ACCESS_TOKEN"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESULT_DB_ERROR"

    goto :goto_0

    :pswitch_b
    const-string v0, "RESULT_NO_DATA"

    goto :goto_0

    :pswitch_c
    const-string v0, "RESULT_FILE_NOT_FOUND"

    goto :goto_0

    :pswitch_d
    const-string v0, "RESULT_BAD_REQUEST"

    goto :goto_0

    :pswitch_e
    const-string v0, "RESULT_CANCELED_ALREADY"

    goto :goto_0

    :pswitch_f
    const-string v0, "RESULT_STARTED_ALREADY"

    goto :goto_0

    :pswitch_10
    const-string v0, "RESULT_NO_NETWORK_CONNECTION"

    goto :goto_0

    :pswitch_11
    const-string v0, "RESULT_SERVER_ERROR"

    goto :goto_0

    :pswitch_12
    const-string v0, "RESULT_NETWORK_ERROR"

    goto :goto_0

    :pswitch_13
    const-string v0, "RESULT_AUTH_ERROR"

    goto :goto_0

    :pswitch_14
    const-string v0, "RESULT_LOCAL_TIMEOUT"

    goto :goto_0

    :pswitch_15
    const-string v0, "RESULT_ESU_AUTH_FAILURE"

    goto :goto_0

    :pswitch_16
    const-string v0, "RESULT_OUT_OF_SERVER_STORAGE"

    goto :goto_0

    :pswitch_17
    const-string v0, "RESULT_EXCEED_CONTENT_LENGTH_LIMIT"

    goto :goto_0

    :pswitch_18
    const-string v0, "RESULT_NOT_SUPPORTED_CONTENT_TYPE"

    goto :goto_0

    :pswitch_19
    const-string v0, "RESULT_EXCEED_DOWNLOAD_COUNT"

    goto :goto_0

    :pswitch_1a
    const-string v0, "RESULT_EXCEED_DAILY_UPLOAD_SIZE_LIMIT"

    goto :goto_0

    :pswitch_1b
    const-string v0, "RESULT_FILE_INVALID"

    goto :goto_0

    :pswitch_1c
    const-string v0, "RESULT_INVALID_QUATA_TIMESTAMP"

    goto :goto_0

    :pswitch_1d
    const-string v0, "RESULT_INVALID_DOWNLOAD_PATH"

    goto :goto_0

    :pswitch_1e
    const-string v0, "RESULT_EXCEED_DAILY_UPLOAD_COUNT_LIMIT"

    goto :goto_0

    :pswitch_1f
    const-string v0, "RESULT_EXCEED_DOWNLOAD_COUNT_AT_SAME_TIME"

    goto :goto_0

    :pswitch_20
    const-string v0, "RC_RENAME_FAIL"

    goto :goto_0

    :pswitch_21
    const-string v0, "RESUTLT_UNEXPECTED_ERROR"

    goto :goto_0

    :pswitch_22
    const-string v0, "RESULT_UNAVAILABLE_RECIPIENTS"

    goto :goto_0

    :pswitch_23
    const-string v0, "RESULT_INVALID_RECIPIENTS"

    goto :goto_0

    :pswitch_24
    const-string v0, "RESULT_SHARE_SESSION_BUSY"

    goto :goto_0

    :pswitch_25
    const-string v0, "RESULT_INVALID_OPERATION"

    goto :goto_0

    :pswitch_26
    const-string v0, "RESULT_INVALID_CONTENT_OR_RECIPIENT"

    goto :goto_0

    :pswitch_27
    const-string v0, "RESULT_MAX_SHARE_NUMBER_EXCEEDS"

    goto :goto_0

    :pswitch_28
    const-string v0, "RESULT_NOT_A_SHARE_MEMBER"

    goto :goto_0

    :pswitch_29
    const-string v0, "RESULT_SHARED_FILE_NOT_EXIST"

    goto :goto_0

    :pswitch_2a
    const-string v0, "RESULT_NOT_GENERATED_THUMBNAIL_IMAGE"

    goto :goto_0

    :pswitch_2b
    const-string v0, "RESULT_NOT_REGISTERED_USER"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "RESULT_INVALID_ACCESS_TOKEN"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "RESULT_BAD_JSON_FORMAT"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "RESULT_HEADER_TIMEZONE_INVALID"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "RESULT_BAD_PHONE_NUMBER_FORMAT"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "RESULT_INVALID_GROUP_ID"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "RESULT_MAXIMUM_SHARE_CONTENTS_EXCEEDS"

    goto/16 :goto_0

    :pswitch_32
    const-string v0, "RESULT_SERVICE_STATUS_OFF"

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "RESULT_CANT_ADD_ONESELF"

    goto/16 :goto_0

    :pswitch_34
    const-string v0, "RESULT_PARAMETER_CID_REQUIRED"

    goto/16 :goto_0

    :pswitch_35
    const-string v0, "RESULT_PARAMETER_CID_BAD_FORMAT"

    goto/16 :goto_0

    :pswitch_36
    const-string v0, "RESULT_PARAMETER_MODIFIED_AFTER"

    goto/16 :goto_0

    :pswitch_37
    const-string v0, "RESULT_PARAMETER_REQUEST_TYPE_REQUIRED"

    goto/16 :goto_0

    :pswitch_38
    const-string v0, "RESULT_MAXIMUM_REQUEST_COUNT_EXCEEDS"

    goto/16 :goto_0

    :pswitch_39
    const-string v0, "RESULT_PARAMETER_CONTENT_START_INVALID"

    goto/16 :goto_0

    :pswitch_3a
    const-string v0, "RESULT_PARAMETER_CONTENT_COUNT_BAD_FORMAT"

    goto/16 :goto_0

    :pswitch_3b
    const-string v0, "HEADER_DUID_REQUIRED"

    goto/16 :goto_0

    :pswitch_3c
    const-string v0, "HEADER_DUID_BAD_FORMAT"

    goto/16 :goto_0

    :pswitch_3d
    const-string v0, "RESULT_INVALID_RECIPIENT_OR_CONTENT"

    goto/16 :goto_0

    :pswitch_3e
    const-string v0, "RESULT_NOT_ALLOWED_OPERATION"

    goto/16 :goto_0

    :pswitch_3f
    const-string v0, "RESULT_PARAMETER_CONTENT_TOKEN_INVALID"

    goto/16 :goto_0

    :pswitch_40
    const-string v0, "RESULT_AUTH_CODE_INVALID_VALUE"

    goto/16 :goto_0

    :pswitch_41
    const-string v0, "RESULT_RESOURCE_DOESNOT_EXIST"

    goto/16 :goto_0

    :pswitch_42
    const-string v0, "RESULT_OUT_OF_DAILY_SERVER_UPLOAD_SIZE_LIMIT"

    goto/16 :goto_0

    :pswitch_43
    const-string v0, "RESULT_GROUP_ID_INVALID"

    goto/16 :goto_0

    :pswitch_44
    const-string v0, "RESULT_PUBLIC_TOKEN_INVALID"

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x8e
        :pswitch_26
        :pswitch_25
        :pswitch_0
        :pswitch_23
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_42
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3f
        :pswitch_3e
        :pswitch_28
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_43
        :pswitch_2d
        :pswitch_2c
        :pswitch_0
        :pswitch_27
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_24
        :pswitch_44
        :pswitch_41
        :pswitch_40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static token2str(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOKEN_UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "TOKEN_RESP_GET_SERVER_INFO"

    goto :goto_0

    :sswitch_1
    const-string v0, "TOKEN_RESP_REGISTER_DEVICE"

    goto :goto_0

    :sswitch_2
    const-string v0, "TOKEN_RESP_FORCE_AUTH"

    goto :goto_0

    :sswitch_3
    const-string v0, "TOKEN_RESP_SPP_REG_DONE"

    goto :goto_0

    :sswitch_4
    const-string v0, "TOKEN_IND_INCOMING_MEDIA"

    goto :goto_0

    :sswitch_5
    const-string v0, "TOKEN_REQ_GET_ALL_NOTI"

    goto :goto_0

    :sswitch_6
    const-string v0, "TOKEN_RESP_ESU_AUTH"

    goto :goto_0

    :sswitch_7
    const-string v0, "TOKEN_ERROR_TIMEOUT"

    goto :goto_0

    :sswitch_8
    const-string v0, "TOKEN_REQ_SEND_MEDIA"

    goto :goto_0

    :sswitch_9
    const-string v0, "TOKEN_REQ_UPLOAD"

    goto :goto_0

    :sswitch_a
    const-string v0, "TOKEN_REQ_DOWNLOAD"

    goto :goto_0

    :sswitch_b
    const-string v0, "TOKEN_REQ_PAUSE"

    goto :goto_0

    :sswitch_c
    const-string v0, "TOKEN_REQ_CANCEL"

    goto :goto_0

    :sswitch_d
    const-string v0, "TOKEN_REQ_PAUSE_UPLOAD"

    goto :goto_0

    :sswitch_e
    const-string v0, "TOKEN_REQ_CANCEL_UPLOAD"

    goto :goto_0

    :sswitch_f
    const-string v0, "TOKEN_REQ_PAUSE_DOWNLOAD"

    goto :goto_0

    :sswitch_10
    const-string v0, "TOKEN_REQ_CANCEL_DOWNLOAD"

    goto :goto_0

    :sswitch_11
    const-string v0, "TOKEN_ACTIVATE"

    goto :goto_0

    :sswitch_12
    const-string v0, "TOKEN_REQ_SHARE"

    goto :goto_0

    :sswitch_13
    const-string v0, "TOKEN_RESULT_ESU_DEAUTH"

    goto :goto_0

    :sswitch_14
    const-string v0, "TOKEN_PAUSE_ALL"

    goto :goto_0

    :sswitch_15
    const-string v0, "TOKEN_SEND_PUSH"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_11
        0x3f1 -> :sswitch_13
        0x7d0 -> :sswitch_8
        0x7d1 -> :sswitch_a
        0x7d2 -> :sswitch_b
        0x7d3 -> :sswitch_c
        0x7d4 -> :sswitch_d
        0x7d5 -> :sswitch_f
        0x7d6 -> :sswitch_e
        0x7d7 -> :sswitch_10
        0x7d8 -> :sswitch_9
        0x7d9 -> :sswitch_12
        0xbb8 -> :sswitch_14
        0x1389 -> :sswitch_15
    .end sparse-switch
.end method
