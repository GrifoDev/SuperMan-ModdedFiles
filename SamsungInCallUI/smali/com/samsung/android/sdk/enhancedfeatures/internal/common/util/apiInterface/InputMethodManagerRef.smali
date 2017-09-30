.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sInputMethodManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceHideSoftInput()V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->sInputMethodManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->sInputMethodManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;->forceHideSoftInput()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Interface SE-SDL"

    const-string v1, "InputMethodManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemInputMethodManagerRef;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/sem/SemInputMethodManagerRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->sInputMethodManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->sInputMethodManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;

    goto :goto_0
.end method

.method public static showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->sInputMethodManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/InputMethodManagerRef;->sInputMethodManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;->showSoftInput(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method
