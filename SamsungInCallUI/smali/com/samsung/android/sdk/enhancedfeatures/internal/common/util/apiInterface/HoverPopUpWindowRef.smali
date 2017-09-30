.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sHoverPopUpInstanceInited:Z

.field private static sHoverPopUpWindowInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/HoverPopUpWindowInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;->sHoverPopUpWindowInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/HoverPopUpWindowInterface;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;->sHoverPopUpInstanceInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHoverPopUpGravity()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;->sHoverPopUpInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;->sHoverPopUpWindowInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/HoverPopUpWindowInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/HoverPopUpWindowInterface;->getHoverPopUpGravity()I

    move-result v0

    return v0
.end method

.method private static init()V
    .locals 2

    const-string v0, "Interface SE-SDL"

    const-string v1, "HoverPopUpWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;->sHoverPopUpWindowInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/HoverPopUpWindowInterface;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;->sHoverPopUpInstanceInited:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlHoverPopUpWindowRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlHoverPopUpWindowRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/HoverPopUpWindowRef;->sHoverPopUpWindowInterface:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/HoverPopUpWindowInterface;

    goto :goto_0
.end method
