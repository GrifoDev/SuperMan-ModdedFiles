.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCscFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;

.field private static sCscFeatureInstanceInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstanceInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 2

    const-string v0, "Interface SE-SDL"

    const-string v1, "CscFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstanceInited:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlCscFeatureRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlCscFeatureRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;

    goto :goto_0
.end method

.method public static isCscFreeMessageOn()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;->isCscFreeMessageOn()Z

    move-result v0

    goto :goto_0
.end method

.method public static isCscProfileShareSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;->isCscProfileShareSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public static isJpnGalaxyFeature()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/CscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;->isJpnGalaxyFeature()Z

    move-result v0

    goto :goto_0
.end method
