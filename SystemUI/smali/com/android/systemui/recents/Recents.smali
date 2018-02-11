.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/Recents$1;,
        Lcom/android/systemui/recents/Recents$2;
    }
.end annotation


# static fields
.field private static sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

.field private static sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

.field private static sRecentsSettingHelper:Lcom/android/systemui/recents/model/RecentsSettingHelper;

.field private static sRecentsStatistics:Lcom/android/systemui/recents/misc/RecentsStatistics;

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private static sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# instance fields
.field private mDraggingInRecentsCurrentUser:I

.field private mHandler:Landroid/os/Handler;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;

.field private final mOnConnectRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideRecentsPackageName:Ljava/lang/String;

.field private mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

.field private mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

.field private final mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mUserToSystemServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/Recents;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/RecentsImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/Recents;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get4()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/Recents;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/Recents;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->runAndFlushOnConnectRunnables()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/recents/Recents$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$1;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/android/systemui/recents/Recents$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$2;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    return-object v0
.end method

.method private static getMetricsCounterForResizeMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "window_enter_incompatible"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "window_enter_unsupported"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "window_enter_supported"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sRecentsSettingHelper:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    return-object v0
.end method

.method public static getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public static getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method private isUserSetup()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .locals 3

    const/16 v2, 0x187

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/android/systemui/recents/Recents;->getMetricsCounterForResizeMode(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(isDockable=false)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private postToSystemUser(Ljava/lang/Runnable;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    if-nez v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/recents/RecentsSystemUserService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x8cdc

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/recents/Recents$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/Recents$9;-><init>(Lcom/android/systemui/recents/Recents;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->runAndFlushOnConnectRunnables()V

    goto :goto_0
.end method

.method private proxyToOverridePackage(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private registerWithSystemUser()V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    new-instance v1, Lcom/android/systemui/recents/Recents$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/Recents$8;-><init>(Lcom/android/systemui/recents/Recents;I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runAndFlushOnConnectRunnables()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->cancelPreloadingRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dockTopTask(IILandroid/graphics/Rect;IZ)Z
    .locals 14

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Device is not initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dockTopTask : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMultiWindowSettingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance p3, Landroid/graphics/Rect;

    iget v2, v10, Landroid/graphics/Point;->x:I

    iget v3, v10, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_4

    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningFullscreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    :goto_0
    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v12

    if-eqz v11, :cond_5

    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v9

    :goto_1
    if-eqz v11, :cond_3

    if-eqz v9, :cond_6

    :cond_3
    if-eqz v9, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/Recents;->showRecents(ZZ)V

    const/4 v2, 0x1

    return v2

    :cond_4
    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    if-nez v12, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget v4, v11, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    iget-boolean v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isDockable:Z

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    iget-boolean v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isDockable:Z

    if-eqz v2, :cond_b

    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p4

    invoke-static {v2, v0, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_7
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->dockTopTask(IIILandroid/graphics/Rect;Z)V

    :cond_8
    :goto_2
    iput v7, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    const/4 v2, 0x1

    return v2

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v1

    if-eqz v1, :cond_a

    :try_start_0
    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->dockTopTask(IIILandroid/graphics/Rect;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Callback failed"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_a
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_3
    const/4 v2, 0x0

    return v2

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const v3, 0x7f0f045e

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/RecentsImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getSystemUserCallbacks()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Device is not initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "hideRecents"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.android.systemui.recents.ACTION_HIDE"

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->hideRecents(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onBootCompleted()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DesktopModeChangedEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recents/Recents;->hideRecents(ZZ)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/recents/Recents$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$6;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/recents/Recents$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$7;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v3, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->applicationContext:Landroid/content/Context;

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsImpl;->onVisibilityChanged(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/systemui/recents/Recents$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/Recents$3;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 4

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v2, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->applicationContext:Landroid/content/Context;

    iget v3, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->taskId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->onStartScreenPinning(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/systemui/recents/Recents$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$4;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/recents/Recents$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$5;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onConfigurationChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDraggingInRecents(F)V
    .locals 5

    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecents(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onDraggingInRecents(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 5

    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecentsEnded(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onDraggingInRecentsEnded(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadRecents()V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->preloadRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showNextAffiliatedTask()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->showNextAffiliatedTask()V

    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->showPrevAffiliatedTask()V

    return-void
.end method

.method public showRecents(ZZ)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Device is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "Recents"

    const-string/jumbo v4, "showRecents"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.android.systemui.recents.ACTION_SHOW"

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v6

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v7

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    move v1, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    move v5, p2

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showRecents(ZZZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Callback failed"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "Recents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No SystemUI callbacks found for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 6

    const/4 v5, 0x1

    new-instance v3, Lcom/android/systemui/recents/RecentsDebugFlags;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/RecentsDebugFlags;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    new-instance v3, Lcom/android/systemui/recents/model/RecentsTaskLoader;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    new-instance v3, Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    new-instance v3, Lcom/android/systemui/recents/model/RecentsSettingHelper;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/model/RecentsSettingHelper;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sRecentsSettingHelper:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    new-instance v3, Lcom/android/systemui/recents/misc/RecentsStatistics;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/misc/RecentsStatistics;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sRecentsStatistics:Lcom/android/systemui/recents/misc/RecentsStatistics;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "uimode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    new-instance v3, Lcom/android/systemui/recents/tv/RecentsTvImpl;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/tv/RecentsTvImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    :goto_0
    const-string/jumbo v3, "userdebug"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "persist.recents_override_pkg"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    invoke-virtual {v3, p0, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/recents/Recents;->sRecentsStatistics:Lcom/android/systemui/recents/misc/RecentsStatistics;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/systemui/recents/RecentsSystemUser;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/RecentsSystemUser;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    :cond_2
    :goto_1
    const-class v3, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v3, p0}, Lcom/android/systemui/recents/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v3, Lcom/android/systemui/recents/RecentsImpl;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/RecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "com.android.systemui:screenshot"

    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V

    goto :goto_1
.end method

.method public toggleRecents(Landroid/view/Display;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "Recents"

    const-string/jumbo v5, "Device is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v4, "Recents"

    const-string/jumbo v5, "toggleRecents"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.android.systemui.recents.ACTION_TOGGLE"

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    const-class v4, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v3

    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0, v3}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->toggleRecents(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "Recents"

    const-string/jumbo v5, "Callback failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "Recents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No SystemUI callbacks found for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
