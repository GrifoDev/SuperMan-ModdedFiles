.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/InputMethodManagerInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mSdlInputMethodManagerRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;

.field private static sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->mSdlInputMethodManagerRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;

    sput-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->mSdlInputMethodManagerRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->mSdlInputMethodManagerRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->mSdlInputMethodManagerRef:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;

    return-object v0
.end method


# virtual methods
.method public forceHideSoftInput()V
    .locals 2

    const-string v0, "forceHideSoftInput"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    return-void
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3

    const-string v0, "showSoftInput"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlInputMethodManagerRef;->sInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    return-void
.end method
