.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/samsung/systemui/splugins/recents/PluginRecents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/Recents$1;,
        Lcom/android/systemui/recents/Recents$2;
    }
.end annotation


# static fields
.field public static final RECENTS_ACTIVITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

.field private static sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

.field private static sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

.field private static sLayoutTypePreference:Lcom/android/systemui/recents/model/LayoutTypePreference;

.field private static sPairedRecentTasksManager:Lcom/android/systemui/recents/model/PairedRecentTasksManager;

.field private static sRecentsSettingHelper:Lcom/android/systemui/recents/model/RecentsSettingHelper;

.field private static sRecentsStatistics:Lcom/android/systemui/recents/misc/RecentsStatistics;

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private static sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

.field private static sTaskLockPreference:Lcom/android/systemui/recents/model/TaskLockPreference;


# instance fields
.field private mDraggingInRecentsCurrentUser:I

.field private mExternalConnected:Z

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

.method static synthetic -get2()Lcom/android/systemui/recents/RecentsSystemUser;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/Recents;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get5()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/Recents;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
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

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    sget-object v0, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    const-string/jumbo v1, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

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

.method public static getLayoutPreference()Lcom/android/systemui/recents/model/LayoutTypePreference;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sLayoutTypePreference:Lcom/android/systemui/recents/model/LayoutTypePreference;

    return-object v0
.end method

.method private static getMetricsCounterForResizeMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "window_enter_incompatible"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "window_enter_unsupported"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "window_enter_supported"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPairedRecentTasksManager()Lcom/android/systemui/recents/model/PairedRecentTasksManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sPairedRecentTasksManager:Lcom/android/systemui/recents/model/PairedRecentTasksManager;

    return-object v0
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

.method public static getSystemUserCallbacks()Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    return-object v0
.end method

.method public static getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public static getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sTaskLockPreference:Lcom/android/systemui/recents/model/TaskLockPreference;

    return-object v0
.end method

.method private isUserSetup()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x187

    invoke-static {p0, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/recents/Recents;->getMetricsCounterForResizeMode(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
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

    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postToSystemUser : bound - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/recents/Recents$12;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/Recents$12;-><init>(Lcom/android/systemui/recents/Recents;)V

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
    .locals 4

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    const-string/jumbo v1, "Recents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerWithSystemUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/recents/Recents$11;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/Recents$11;-><init>(Lcom/android/systemui/recents/Recents;I)V

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
.method public cancelPreloadRecentApps()V
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

    iget-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

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

.method public dockTopTask(IILandroid/graphics/Rect;I)Z
    .locals 13

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "Recents"

    const-string/jumbo v10, "dockTopTask: device is not initialized"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_0
    const-string/jumbo v9, "Recents"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "dockTopTask: dragMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "createMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    if-nez p3, :cond_1

    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v10, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/display/DisplayManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance p3, Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-direct {v0, v11, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    sget-object v9, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getVisibleRunningFullscreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    :goto_0
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v7

    if-eqz v6, :cond_5

    iget v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v9}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v4

    :goto_1
    if-eqz v6, :cond_9

    xor-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_9

    xor-int/lit8 v9, v7, 0x1

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget v11, v6, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    invoke-static {v9, v10, v11}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iget-boolean v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-eqz v9, :cond_8

    const/4 v9, -0x1

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p4

    invoke-static {v9, v0, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    sget-object v9, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v9, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p3

    invoke-virtual {v9, v10, p1, p2, v0}, Lcom/android/systemui/recents/RecentsImpl;->dockTopTask(IIILandroid/graphics/Rect;)V

    :cond_3
    :goto_2
    iput v2, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    const/4 v9, 0x1

    return v9

    :cond_4
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    sget-object v9, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v9, v2}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_0
    iget v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p3

    invoke-interface {v1, v9, p1, p2, v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->dockTopTask(IIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v9, "Recents"

    const-string/jumbo v10, "Callback failed"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_7
    const-string/jumbo v9, "Recents"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No SystemUI callbacks found for user: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;

    const v11, 0x10402d9

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v9, 0x0

    return v9

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->toggleRecentApps()V

    const/4 v9, 0x1

    return v9

    :cond_a
    const/4 v9, 0x0

    return v9
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "Recents"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  currentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/RecentsImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/RecentsConfiguration;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/model/TaskLockPreference;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getLastTaskStack()Lcom/samsung/systemui/splugins/recents/model/PluginTaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mLastStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public getPluginConfiguration()Lcom/samsung/systemui/splugins/recents/PluginRecentsConfiguration;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public getPluginDebugFlags()Lcom/samsung/systemui/splugins/recents/PluginRecentsDebugFlags;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    return-object v0
.end method

.method public getPluginSettingHelper()Lcom/samsung/systemui/splugins/recents/model/PluginRecentsSettingHelper;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sRecentsSettingHelper:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    return-object v0
.end method

.method public getPluginSystemServices()Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "hideRecentApps: device is not initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v3, "com.android.systemui.recents.ACTION_HIDE"

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hideRecentApps: proxyToOverridePackagee="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hideRecentApps: fromAltTab="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "fromHomeKey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

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

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/recents/Recents$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$7;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V

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

    new-instance v1, Lcom/android/systemui/recents/Recents$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$8;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/recents/Recents$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$10;-><init>(Lcom/android/systemui/recents/Recents;)V

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
    new-instance v2, Lcom/android/systemui/recents/Recents$4;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/Recents$4;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V

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
    new-instance v1, Lcom/android/systemui/recents/Recents$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$5;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ShowUserToastEvent;)V
    .locals 6

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget v4, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    iget v5, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/RecentsImpl;->onShowCurrentUserToast(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget v3, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    iget v4, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    invoke-interface {v0, v3, v4}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showCurrentUserToast(II)V
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

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v2, p1, Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;->applicationContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;->snapCaller:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->onStartSnapView(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/systemui/recents/Recents$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$9;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/SnapViewRequestEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/LayoutTypeChangeEvent;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableListLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onLayoutModeChanged()V

    :cond_0
    return-void
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

    new-instance v1, Lcom/android/systemui/recents/Recents$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$6;-><init>(Lcom/android/systemui/recents/Recents;)V

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

    iget-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

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

    iget-boolean v2, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecents(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

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

    iget-boolean v2, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecentsEnded(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

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

.method public preloadRecentApps()V
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

    iget-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

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

.method public showRecentApps(ZZ)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "showRecentApps: device is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "com.android.systemui.recents.ACTION_SHOW"

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Recents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showRecentApps: proxyToOverridePackagee="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string/jumbo v4, "recentapps"

    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string/jumbo v1, "Recents"

    const-string/jumbo v4, "showRecentApps"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-boolean v1, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    move v1, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v1, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    move v5, p2

    :try_start_1
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showRecents(ZZZZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Callback failed"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

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

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public showScreenPinningRequest(I)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public start()V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v2, Lcom/android/systemui/recents/model/LayoutTypePreference;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/model/LayoutTypePreference;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sLayoutTypePreference:Lcom/android/systemui/recents/model/LayoutTypePreference;

    new-instance v2, Lcom/android/systemui/recents/RecentsDebugFlags;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/RecentsDebugFlags;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoader;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    new-instance v2, Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    new-instance v2, Lcom/android/systemui/recents/model/RecentsSettingHelper;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/model/RecentsSettingHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sRecentsSettingHelper:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    new-instance v2, Lcom/android/systemui/recents/model/TaskLockPreference;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/model/TaskLockPreference;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sTaskLockPreference:Lcom/android/systemui/recents/model/TaskLockPreference;

    new-instance v2, Lcom/android/systemui/recents/misc/RecentsStatistics;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/misc/RecentsStatistics;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sRecentsStatistics:Lcom/android/systemui/recents/misc/RecentsStatistics;

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/recents/model/PairedRecentTasksManager;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/model/PairedRecentTasksManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sPairedRecentTasksManager:Lcom/android/systemui/recents/model/PairedRecentTasksManager;

    :cond_0
    invoke-static {}, Lcom/android/systemui/RecentsUtilsProvider;->initialize()Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/RecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    const-string/jumbo v5, "Recents"

    const-string/jumbo v6, "SPluginManager - register PluginEmGoodRecentsManager / isNotNull=%b\n"

    new-array v7, v3, [Ljava/lang/Object;

    const-class v2, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    const-class v2, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginManager;

    new-instance v5, Lcom/android/systemui/recents/Recents$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/Recents$3;-><init>(Lcom/android/systemui/recents/Recents;)V

    const-class v6, Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-interface {v2, v5, v6, v4}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    const-string/jumbo v2, "userdebug"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "persist.recents_override_pkg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/recents/Recents;->sPairedRecentTasksManager:Lcom/android/systemui/recents/model/PairedRecentTasksManager;

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/recents/Recents;->sRecentsStatistics:Lcom/android/systemui/recents/misc/RecentsStatistics;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    new-instance v2, Lcom/android/systemui/recents/RecentsSystemUser;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/recents/RecentsSystemUser;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImpl;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    :goto_1
    const-class v2, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v2, p0}, Lcom/android/systemui/recents/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :cond_4
    move v2, v4

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V

    goto :goto_1
.end method

.method public toggleRecentApps()V
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "Recents"

    const-string/jumbo v5, "toggleRecentApps: device is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v4, "com.android.systemui.recents.ACTION_TOGGLE"

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Recents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "toggleRecentApps: proxyToOverridePackagee="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v4, "Recents"

    const-string/jumbo v5, "toggleRecentApps"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-boolean v4, p0, Lcom/android/systemui/recents/Recents;->mExternalConnected:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v4, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

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
