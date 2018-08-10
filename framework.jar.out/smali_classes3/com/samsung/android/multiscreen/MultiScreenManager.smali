.class public Lcom/samsung/android/multiscreen/MultiScreenManager;
.super Ljava/lang/Object;
.source "MultiScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiscreen/MultiScreenManager$1;
    }
.end annotation


# static fields
.field public static final ACTIVITY_STACK_ID_MULTIPLIER:I = 0x3e8

.field public static final DEBUG:Z

.field public static final DEBUG_AM:Z

.field public static final DEBUG_VERBOSE:Z

.field public static final DEBUG_WARNING:Z

.field public static final DEBUG_WM:Z

.field public static final INTENT_EXTRA_COUPLED:Ljava/lang/String; = "MultiScreen:coupled"

.field public static final INTENT_EXTRA_MULTI_SCREEN_CALLER_ACTIVITY_DISPLAY_ID:Ljava/lang/String; = "com.samsung.android.intent.extra.EXTRA_DUAL_SCREEN_CALLER_ACTIVITY_DISPLAY_ID"

.field public static final INTENT_EXTRA_MULTI_SCREEN_ORIGINAL_TARGET_ACTIVITY:Ljava/lang/String; = "com.samsung.android.intent.extra.INTENT_EXTRA_MULTI_SCREEN_ORIGINAL_TARGET_ACTIVITY"

.field public static final INTENT_EXTRA_SCREEN:Ljava/lang/String; = "MultiScreen:screen"

.field public static final MULTISCREEN_SERVICE:Ljava/lang/String; = "MultiScreen"

.field private static final REQUIRED_MINIMUM_SDK_VERSION_CODE:I = 0x8

.field private static final REQUIRED_MINIMUM_SDK_VERSION_NAME:Ljava/lang/String; = "0.8"

.field public static final SAFE_DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field public static final TAG_MultiScreen:Ljava/lang/String; = "[MultiScreen]"

.field private static final VERSION_CODE:I = 0x5

.field private static final VERSION_NAME:Ljava/lang/String; = "0.5"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/samsung/android/multiscreen/IMultiScreenManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/samsung/android/multiscreen/MultiScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->SAFE_DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG_WM:Z

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG_AM:Z

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG_VERBOSE:Z

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v0, :cond_3

    :goto_3
    sput-boolean v1, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG_WARNING:Z

    new-instance v0, Lcom/samsung/android/multiscreen/MultiScreenManager$1;

    invoke-direct {v0}, Lcom/samsung/android/multiscreen/MultiScreenManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->gDefault:Landroid/util/Singleton;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MultiScreenManager() : context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected static getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiscreen/IMultiScreenManager;

    return-object v0
.end method

.method public static getDisplayIdFromStackId(I)I
    .locals 1

    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static getFrameworkVersionCode()I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFrameworkVersionCode() : 5"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method public static getFrameworkVersionName()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getFrameworkVersionName() : 0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "0.5"

    return-object v0
.end method

.method public static getRequiredMinimumSdkVersionCode()I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getRequiredMinimumSdkVersionCode() : 8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x8

    return v0
.end method

.method public static getRequiredMinimumSdkVersionName()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getRequiredMinimumSdkVersionName() : 0.8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "0.8"

    return-object v0
.end method

.method public static getStackIdAdjustedToDisplayId(II)I
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiscreen/MultiScreenManager;->getStackIdExcludingDisplayId(I)I

    move-result v0

    mul-int/lit16 v1, p1, 0x3e8

    add-int/2addr v1, v0

    return v1
.end method

.method public static getStackIdExcludingDisplayId(I)I
    .locals 1

    rem-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static makeIntent(Landroid/content/Context;Landroid/content/Intent;II)Landroid/content/Intent;
    .locals 5

    sget-boolean v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeIntent() : displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "context is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "intent is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "invalid activity token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sget-object v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeIntent called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;

    invoke-virtual {v2, p2}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->setDisplayId(I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;

    invoke-virtual {v2, p3}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->setFlags(I)V

    sget-boolean v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeIntent() intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object p1
.end method

.method public static moveTaskToDisplay(II)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToDisplay() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid taskId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiscreen/MultiScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->moveTaskToDisplay(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiscreen/MultiScreenManager;->warningException(Ljava/lang/Exception;)V

    return v4
.end method

.method private static warningException(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warningException() : caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDisplayId()I
    .locals 5

    sget-boolean v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getDisplayId()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDisplayId() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    sget-boolean v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getDisplayId() ret=-1"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public getDisplayId(I)I
    .locals 4

    sget-boolean v1, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDisplayId() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid taskId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiscreen/MultiScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->getDisplayId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiscreen/MultiScreenManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    return v1
.end method

.method public moveToDisplay(I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, -0x1

    sget-boolean v4, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveToDisplay() : displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "context should be an Activity instance"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_3

    sget-boolean v4, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/multiscreen/MultiScreenManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "moveToDisplay() : this activity doesn\'t have display"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v7

    :cond_3
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :cond_4
    if-ne v1, p1, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "target and source display are same."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/samsung/android/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/multiscreen/MultiScreenManager;->getDefault()Lcom/samsung/android/multiscreen/IMultiScreenManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Lcom/samsung/android/multiscreen/IMultiScreenManager;->moveToDisplay(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/samsung/android/multiscreen/MultiScreenManager;->warningException(Ljava/lang/Exception;)V

    :cond_6
    return v7
.end method
