.class public Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/HoverPopUpWindowInterface;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.samsung.android.widget.SemHoverPopupWindow"

.field private static final TAG:Ljava/lang/String;

.field private static isSupported:Z

.field private static mSemHoverPopUpWindowRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->mSemHoverPopUpWindowRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->isSupported:Z

    :try_start_0
    const-string v0, "com.samsung.android.widget.SemHoverPopupWindow"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->isSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->isSupported:Z

    const-string v0, "unsupported"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->mSemHoverPopUpWindowRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->mSemHoverPopUpWindowRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->mSemHoverPopUpWindowRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;

    return-object v0
.end method


# virtual methods
.method public getHoverPopUpGravity()I
    .locals 3

    const/16 v2, 0x10

    const-string v0, "getHoverPopUpGravity"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemHoverPopUpWindowRef;->isSupported:Z

    if-eqz v0, :cond_0

    :cond_0
    return v2
.end method
