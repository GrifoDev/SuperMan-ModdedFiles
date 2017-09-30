.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSmsManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SmsManagerInterface;

.field private static sSmsManagerInstanceInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;->sSmsManagerInstanceInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmsManagerForSubscriber(J)Landroid/telephony/SmsManager;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;->sSmsManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;->sSmsManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SmsManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;->sSmsManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SmsManagerInterface;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SmsManagerInterface;->getSmsManagerForSubscriber(J)Landroid/telephony/SmsManager;

    move-result-object v0

    goto :goto_0
.end method

.method private static init()V
    .locals 2

    const-string v0, "Interface SE-SDL"

    const-string v1, "SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSmsManagerRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSmsManagerRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;->sSmsManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SmsManagerInterface;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;->sSmsManagerInstanceInited:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSmsManagerRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSmsManagerRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SmsManagerRef;->sSmsManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SmsManagerInterface;

    goto :goto_0
.end method
