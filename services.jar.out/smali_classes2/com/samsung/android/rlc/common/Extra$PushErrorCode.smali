.class public final enum Lcom/samsung/android/rlc/common/Extra$PushErrorCode;
.super Ljava/lang/Enum;
.source "Extra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/common/Extra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/rlc/common/Extra$PushErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum APPLICATION_ALREADY_DEREGISTRATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum BAD_REQUEST_FOR_PROVISION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum CONNECTION_MAX_EXCEEDED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum DEREGISTRATION_FAILED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum FAIL_TO_AUTHENTICATE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum INITIALIZATION_ALREADY_COMPLETED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum INITIALIZATION_FAIL:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum INTERRUPTED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum INVALID_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum INVALID_DEVICE_TOKEN:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum INVALID_DEVICE_TOKEN_TO_REPROVISION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum INVALID_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum INVALID_STATE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum NETWORK_NOT_AVAILABLE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum PROVISIONING_DATA_EXISTS:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum PROVISIONING_FAIL:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum PROVISION_EXCEPTION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum REGISTRATION_FAILED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum REPROVISIONING_REQUIRED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum RESET_BY_NEW_INITIALIZATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum SUCCESS:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum TIMEOUT:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum UNDEFINED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum UNEXPECTED_MESSAGE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum UNKOWN_MESSAGE_TYPE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum UNSUPPORTED_PING_SPECIFICATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum WRONG_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum WRONG_DEVICE_TOKEN:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field public static final enum WRONG_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

.field private static _map:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/rlc/common/Extra$PushErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "UNDEFINED"

    invoke-direct {v2, v3, v1, v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNDEFINED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "TIMEOUT"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v6, v4}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->TIMEOUT:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "NETWORK_NOT_AVAILABLE"

    const/4 v4, -0x2

    invoke-direct {v2, v3, v7, v4}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "PROVISIONING_DATA_EXISTS"

    const/16 v4, -0x64

    invoke-direct {v2, v3, v8, v4}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->PROVISIONING_DATA_EXISTS:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "INITIALIZATION_ALREADY_COMPLETED"

    const/16 v4, -0x66

    invoke-direct {v2, v3, v9, v4}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INITIALIZATION_ALREADY_COMPLETED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "PROVISIONING_FAIL"

    const/4 v4, 0x5

    const/16 v5, -0x67

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->PROVISIONING_FAIL:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "INITIALIZATION_FAIL"

    const/4 v4, 0x6

    const/16 v5, -0x68

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INITIALIZATION_FAIL:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "APPLICATION_ALREADY_DEREGISTRATION"

    const/4 v4, 0x7

    const/16 v5, -0x69

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->APPLICATION_ALREADY_DEREGISTRATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "SUCCESS"

    const/16 v4, 0x8

    const/16 v5, 0x3e8

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->SUCCESS:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "UNKOWN_MESSAGE_TYPE"

    const/16 v4, 0x9

    const/16 v5, 0x7d0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNKOWN_MESSAGE_TYPE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "UNEXPECTED_MESSAGE"

    const/16 v4, 0xa

    const/16 v5, 0x7d1

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNEXPECTED_MESSAGE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "INTERNAL_SERVER_ERROR"

    const/16 v4, 0xb

    const/16 v5, 0x7d2

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INTERNAL_SERVER_ERROR:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "INTERRUPTED"

    const/16 v4, 0xc

    const/16 v5, 0x7d3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INTERRUPTED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "BAD_REQUEST_FOR_PROVISION"

    const/16 v4, 0xd

    const/16 v5, 0xbb8

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->BAD_REQUEST_FOR_PROVISION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "FAIL_TO_AUTHENTICATE"

    const/16 v4, 0xe

    const/16 v5, 0xbb9

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->FAIL_TO_AUTHENTICATE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "INVALID_DEVICE_TOKEN_TO_REPROVISION"

    const/16 v4, 0xf

    const/16 v5, 0xbba

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_DEVICE_TOKEN_TO_REPROVISION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "PROVISION_EXCEPTION"

    const/16 v4, 0x10

    const/16 v5, 0xbbb

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->PROVISION_EXCEPTION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "CONNECTION_MAX_EXCEEDED"

    const/16 v4, 0x11

    const/16 v5, 0xfa0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->CONNECTION_MAX_EXCEEDED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "INVALID_STATE"

    const/16 v4, 0x12

    const/16 v5, 0xfa1

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_STATE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "INVALID_DEVICE_TOKEN"

    const/16 v4, 0x13

    const/16 v5, 0xfa2

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_DEVICE_TOKEN:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "INVALID_APP_ID"

    const/16 v4, 0x14

    const/16 v5, 0xfa3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "INVALID_REG_ID"

    const/16 v4, 0x15

    const/16 v5, 0xfa4

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "RESET_BY_NEW_INITIALIZATION"

    const/16 v4, 0x16

    const/16 v5, 0xfa5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->RESET_BY_NEW_INITIALIZATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "REPROVISIONING_REQUIRED"

    const/16 v4, 0x17

    const/16 v5, 0xfa6

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->REPROVISIONING_REQUIRED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "REGISTRATION_FAILED"

    const/16 v4, 0x18

    const/16 v5, 0xfa7

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->REGISTRATION_FAILED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "DEREGISTRATION_FAILED"

    const/16 v4, 0x19

    const/16 v5, 0xfa8

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->DEREGISTRATION_FAILED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "WRONG_DEVICE_TOKEN"

    const/16 v4, 0x1a

    const/16 v5, 0xfa9

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_DEVICE_TOKEN:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "WRONG_APP_ID"

    const/16 v4, 0x1b

    const/16 v5, 0xfaa

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "WRONG_REG_ID"

    const/16 v4, 0x1c

    const/16 v5, 0xfab

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const-string/jumbo v3, "UNSUPPORTED_PING_SPECIFICATION"

    const/16 v4, 0x1d

    const/16 v5, 0xfac

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNSUPPORTED_PING_SPECIFICATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v2, 0x1e

    new-array v2, v2, [Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNDEFINED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    aput-object v3, v2, v1

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->TIMEOUT:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    aput-object v3, v2, v6

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    aput-object v3, v2, v7

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->PROVISIONING_DATA_EXISTS:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    aput-object v3, v2, v8

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INITIALIZATION_ALREADY_COMPLETED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    aput-object v3, v2, v9

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->PROVISIONING_FAIL:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INITIALIZATION_FAIL:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->APPLICATION_ALREADY_DEREGISTRATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->SUCCESS:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x8

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNKOWN_MESSAGE_TYPE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x9

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNEXPECTED_MESSAGE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0xa

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INTERNAL_SERVER_ERROR:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0xb

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INTERRUPTED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0xc

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->BAD_REQUEST_FOR_PROVISION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0xd

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->FAIL_TO_AUTHENTICATE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0xe

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_DEVICE_TOKEN_TO_REPROVISION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0xf

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->PROVISION_EXCEPTION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x10

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->CONNECTION_MAX_EXCEEDED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x11

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_STATE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x12

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_DEVICE_TOKEN:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x13

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x14

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x15

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->RESET_BY_NEW_INITIALIZATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x16

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->REPROVISIONING_REQUIRED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x17

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->REGISTRATION_FAILED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x18

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->DEREGISTRATION_FAILED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x19

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_DEVICE_TOKEN:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    sget-object v3, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNSUPPORTED_PING_SPECIFICATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->$VALUES:[Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    sput-object v2, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->_map:Ljava/util/TreeMap;

    invoke-static {}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->values()[Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->_map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/samsung/android/rlc/common/Extra$PushErrorCode;
    .locals 3

    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->_map:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNDEFINED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/rlc/common/Extra$PushErrorCode;
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/rlc/common/Extra$PushErrorCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->$VALUES:[Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->mValue:I

    return v0
.end method
