.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;
.super Ljava/lang/Object;


# static fields
.field public static final CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final TAG:Ljava/lang/String;

.field private static sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

.field private static sFloatingFeatureInstanceInited:Z

.field private static sMessagePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstanceInited:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sMessagePackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactPackageName()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    if-nez v0, :cond_1

    const-string v0, "com.android.contacts"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;->getContactPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    if-nez v0, :cond_1

    const-string v0, "com.android.mms"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sMessagePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sMessagePackageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;->getMessagePackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sMessagePackageName:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sMessagePackageName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "com.android.mms"

    goto :goto_1
.end method

.method private static init()V
    .locals 2

    const-string v0, "Interface SE-SDL"

    const-string v1, "FloatingFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstanceInited:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlFloatingFeatureRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlFloatingFeatureRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    goto :goto_0
.end method

.method public static isShowBtnBgEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;->isShowBtnBgEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportLinkSimContactEnabled()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstanceInited:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->init()V

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;->isSupportLinkSimContactEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSurveyModeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;->isSurveyModeEnabled()Z

    move-result v0

    goto :goto_0
.end method
