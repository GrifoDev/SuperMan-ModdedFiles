.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiWindowRef;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sMultiWindowInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiWindowInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiWindowRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiWindowRef;->TAG:Ljava/lang/String;

    const-string v0, "Interface SE-SDL"

    const-string v1, "MultiWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiWindowRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiWindowRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiWindowRef;->sMultiWindowInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiWindowInterface;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiWindowRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiWindowRef;->sMultiWindowInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiWindowInterface;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFloatingWindow(Landroid/view/Window;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiWindowRef;->sMultiWindowInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiWindowInterface;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiWindowRef;->sMultiWindowInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiWindowInterface;

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiWindowInterface;->disableFloatingWindow(Landroid/view/Window;)V

    goto :goto_0
.end method
