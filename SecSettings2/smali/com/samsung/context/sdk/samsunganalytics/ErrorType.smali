.class public Lcom/samsung/context/sdk/samsunganalytics/ErrorType;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static ERROR_INVALID_PARAMETER:I

.field public static ERROR_NETWORK_UNAVAILABLE:I

.field public static ERROR_NONE:I

.field public static ERROR_NO_DEVICE_ID:I

.field public static ERROR_QUOTA_EXCEED:I

.field public static ERROR_UNKNOWN:I

.field public static ERROR_USER_NOT_AGREE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NONE:I

    const/4 v0, -0x1

    sput v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_QUOTA_EXCEED:I

    const/4 v0, -0x2

    sput v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_USER_NOT_AGREE:I

    const/4 v0, -0x3

    sput v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_INVALID_PARAMETER:I

    const/4 v0, -0x4

    sput v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NETWORK_UNAVAILABLE:I

    const/4 v0, -0x5

    sput v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NO_DEVICE_ID:I

    const/16 v0, -0x64

    sput v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_UNKNOWN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
