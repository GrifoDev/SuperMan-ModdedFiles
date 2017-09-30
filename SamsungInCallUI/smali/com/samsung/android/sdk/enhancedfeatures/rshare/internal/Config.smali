.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Config;
.super Ljava/lang/Object;


# static fields
.field public static final APP_SECRET:Ljava/lang/String; = "D8BAB5274A93A7D96101D637D4F5D7D2"

.field public static final AUTH_HEADER:Ljava/lang/String; = "Basic cHQ5NnJyYWJycDpEOEJBQjUyNzRBOTNBN0Q5NjEwMUQ2MzdENEY1RDdEMg=="

.field public static final BACKOFF_MULT:F = 2.0f

.field public static final CLIENT_NAME:Ljava/lang/String; = "remoteshare"

.field public static final CLIENT_VER:Ljava/lang/String; = "1.0.0.0"

.field public static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "rshare"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "01"

.field public static final HTTP_FILE_UPLOAD_BUF_LENGTH:I = 0x1000

.field public static final MAX_FIRST_CHUNK_LENGTH:I = 0xc800

.field public static final MAX_RETRIES:I = 0x2

.field public static final MEDIA_SIZE_WITHOUT_USER_CONFIRM:J = 0x3200000L

.field public static final MULTI_UPLOAD_SIZE:I

.field public static final NETWORK_THREAD_POOL_SIZE:I = 0x8

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_GIGA:J = 0x40000000L

.field private static final ONE_HOUR:I = 0x36ee80

.field public static final ONE_KILO:I = 0x400

.field public static final ONE_MEGA:I = 0x100000

.field public static final ONE_MINUTE:I = 0xea60

.field public static final ONE_SECOND:I = 0x3e8

.field public static final PREVIEW_NUMBER_OF_THUMBNAIL:I = 0x6

.field public static final TEMP_FILE_SUFFIX:Ljava/lang/String; = ".temp"

.field public static final TIMEOUT_MS:I = 0x1388

.field public static final UPLOAD_ONLY_WIFI_MEGABYTE:I = 0x32

.field public static final UPLOAD_PROGRESS_UNIT:I = 0x19000

.field public static final VOLLEY_TAG_PREFIX:Ljava/lang/String; = "700452"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Config;->getMaxChunkSize()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Config;->MULTI_UPLOAD_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "Basic cHQ5NnJyYWJycDpEOEJBQjUyNzRBOTNBN0Q5NjEwMUQ2MzdENEY1RDdEMg=="

    return-object v0
.end method

.method public static getMaxChunkSize()I
    .locals 2

    const/high16 v1, 0x100000

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getEnableBadNetworkPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "remoteshare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
