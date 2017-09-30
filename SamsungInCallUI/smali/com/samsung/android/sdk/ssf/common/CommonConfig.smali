.class public Lcom/samsung/android/sdk/ssf/common/CommonConfig;
.super Ljava/lang/Object;


# static fields
.field public static final BACKOFF_0X:F = 0.0f

.field public static final BACKOFF_1X:F = 1.0f

.field public static final BACKOFF_2X:F = 2.0f

.field public static final DEFAULT_BACKOFF:F = 1.0f

.field public static final DEFAULT_RETRY:I = 0x1

.field public static final DEFAULT_TIME_OUT:I = 0x1388

.field public static final HTTP_FILE_UPLOAD_BUFFER_SIZE:I = 0x1000

.field public static final MAX_MSG_CNT_FORWARD_UNREAD:I = 0x64

.field public static final NETWORK_THREAD_POOL_SIZE:Ljava/lang/Integer;

.field public static final NETWORK_THREAD_POOL_SIZE_FOR_BAD_NETWORK:Ljava/lang/Integer;

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_HOUR:I = 0x36ee80

.field public static final ONE_KILO:I = 0x400

.field public static final ONE_MEGA:I = 0x100000

.field public static final ONE_MINUTE:I = 0xea60

.field public static final ONE_SECOND:I = 0x3e8

.field public static final RETRY_0_TIME:I = 0x0

.field public static final RETRY_1_TIME:I = 0x1

.field public static final RETRY_2_TIMES:I = 0x2

.field public static RSHARE_RECIPIENT_SIZE:I = 0x0

.field public static final SHOP_MAX_COUNT:Ljava/lang/String; = "20"

.field public static final TIME_OUT_10_SECONDS:I = 0x2710

.field public static final TIME_OUT_15_SECONDS:I = 0x3a98

.field public static final TIME_OUT_20_SECONDS:I = 0x4e20

.field public static final TIME_OUT_30_SECONDS:I = 0x7530

.field public static final TIME_OUT_40_SECONDS:I = 0x9c40

.field public static final TIME_OUT_50_SECONDS:I = 0xc350

.field public static final TIME_OUT_5_SECONDS:I = 0x1388

.field public static final TIME_OUT_75_SECONDS:I = 0x124f8

.field public static final UPLOAD_PROGRESS_UNIT:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/CommonConfig;->NETWORK_THREAD_POOL_SIZE:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/CommonConfig;->NETWORK_THREAD_POOL_SIZE_FOR_BAD_NETWORK:Ljava/lang/Integer;

    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/sdk/ssf/common/CommonConfig;->RSHARE_RECIPIENT_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
