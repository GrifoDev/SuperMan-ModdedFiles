.class public Lcom/android/server/am/SamsungActivityManagerService;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"

# interfaces
.implements Lcom/android/server/am/IActivityManagerServiceBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SamsungActivityManagerService$BgHandler;,
        Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;,
        Lcom/android/server/am/SamsungActivityManagerService$MainHandler;,
        Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;,
        Lcom/android/server/am/SamsungActivityManagerService$UiHandler;,
        Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;
    }
.end annotation


# static fields
.field static final ACTION_KDDI_SCREEN_PINNING_CONDITION:Ljava/lang/String; = "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

.field static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final CSC_VERSION:Ljava/lang/String;

.field static final DEBUG:Z = true

.field private static final DEBUG_VS:Z

.field private static final INTENT_ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KEEP_PACKAGES:Ljava/lang/String; = "keep_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KILL_PACKAGES:Ljava/lang/String; = "kill_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_NAME:Ljava/lang/String; = "name"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_SKIP_SDK_VERSION_CHECK:Ljava/lang/String; = "skip_sdk_version_check"

.field static final MAX_ALLOWED_RECEIVER_COUNT:I = 0x1388

.field static final MAX_ALLOWED_RECEIVER_FILTER_COUNT:I = 0x1388

.field static final MAX_KEEP_ALIVE_ACTIVITIES:I = 0x2

.field static final META_DATA_KEEP_ALIVE:Ljava/lang/String; = "com.samsung.android.keepalive.density"

.field static final META_DATA_PERSISTENT_DOWNLOADABLE:Ljava/lang/String; = "com.samsung.android.persistent.downloadable"

.field static final PERMISSION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.permission.LOCK_TASK_MODE"

.field static final PERSISTENT_MASK:I = 0x9

.field private static final PRE_BOOT_CSC_FILE:Ljava/io/File;

.field private static final PRE_BOOT_CSC_FILENAME:Ljava/lang/String; = "pre_boot_csc.dat"

.field private static final SEC_IME_PACKAGE:Ljava/lang/String; = "com.sec.android.inputmethod"

.field static final SLOW_DISPATCH_THRESHOLD_MS:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "SamsungActivityManager"

.field private static final TASKWATCHER_FLAG_CONCERN_FRONT:I = 0x1

.field private static final TASKWATCHER_FLAG_REMOVED:I = 0x10

.field private static final TASKWATCHER_FLAG_TASK_DESCRIPTION_SET:I = 0x100

.field private static final VRCORE_PACKAGE:Ljava/lang/String; = "com.google.vr.vrcore"

.field private static mRelaxedBroadcastActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAllTaskWatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/app/ITaskWatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mAppNotRespodingProcs:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mBgHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field final mForceKeepAliveProcesses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mForceKillPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceStopReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field mKeepAliveActivities:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

.field final mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

.field mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

.field mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

.field mTaskState:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTaskWatchers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/app/ITaskWatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUiHandler:Landroid/os/Handler;

.field private mVSClientActivity:Lcom/android/server/am/ActivityRecord;

.field private mVSContainerStack:Lcom/android/server/am/ActivityStack;

.field private mVSExiting:Z

.field private mVSImeDisplayId:I

.field private mVSMode:Z

.field private mVSRedirectingDisplayId:I

.field private mVSStack:Lcom/android/server/am/ActivityStack;

.field private mVSVisible:Z

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/SamsungActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->handleDumpstate(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    const-string/jumbo v2, "ril.official_cscver"

    const-string/jumbo v3, "DUMMY"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "pre_boot_csc.dat"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    sget-boolean v2, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    sput-boolean v2, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAppNotRespodingProcs:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    invoke-direct {v0, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;-><init>(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKillPackages:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKeepAliveProcesses:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSRedirectingDisplayId:I

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SamsungActivityManagerService$MainHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$BgHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SamsungActivityManagerService$BgHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v1, "installPackageLI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v1, "pkg removed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v1, "pkg changed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setSlowDispatchThresholdMs(J)V

    :cond_0
    const-string/jumbo v0, "SamsungActivityManager"

    const-string/jumbo v1, "SamsungActivityManagerService created."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(III)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private checkAccess(Ljava/lang/String;I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.virtualspace.permission.SEM_USE_VIRTUAL_SPACE"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SamsungActivityManager"

    const-string/jumbo v3, "App doesn\'t have the permission to start in VS container"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const-string/jumbo v2, "SamsungActivityManager"

    const-string/jumbo v3, "App doesn\'t have the permission to start in VS container, ignored on eng build"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_2
    sget-boolean v2, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SamsungActivityManager"

    const-string/jumbo v3, "App has permission to start in VS container"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService;->moveFocusLocked(Lcom/android/server/am/ActivityStack;Z)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V

    return-void
.end method

.method private destroyVSStack()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iput-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :cond_0
    return-void
.end method

.method private executeDumpstate(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    const-string/jumbo v0, "stopped"

    const-string/jumbo v1, "init.svc.dumpstate"

    const-string/jumbo v2, "stopped"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SamsungActivityManager"

    const-string/jumbo v1, "executeDumpstate: dumpstate is already running."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "SamsungActivityManager"

    const-string/jumbo v1, "executeDumpstate: bugreport"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "dumpstate.options"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bugreport"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private findProcessRecordLocked(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private varargs getAllTasksFromStack([I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, p1, v3

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getConfigurationForStackLocked(Lcom/android/server/am/ActivityStack;)Landroid/content/res/Configuration;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method private getDefaultHomePackageName()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2

    :cond_0
    return-object v4
.end method

.method private getFullScreenStack(Z)Lcom/android/server/am/ActivityStack;
    .locals 9

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v4, "vs-finish"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-object v8

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private getIntentBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 3

    if-nez p1, :cond_0

    return p3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_1
    return p3
.end method

.method private getStackForDisplayLocked(I)Lcom/android/server/am/ActivityStack;
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    :cond_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    return-object v0

    :cond_3
    return-object v3
.end method

.method private handleDumpstate(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->executeDumpstate(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method private initRelaxedBroadcastActions()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-lez v0, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    const-string/jumbo v6, "com.samsung.android.keepalive.density"

    invoke-virtual {v5, v0, v6}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private moveFocusLocked(Lcom/android/server/am/ActivityStack;Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :cond_0
    if-nez p2, :cond_4

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v2, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    if-ne v0, p1, :cond_6

    :cond_5
    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    return v3
.end method

.method private needNewContainer(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    if-nez v0, :cond_1

    return v3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "com.samsung.android.vs.container"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    const-string/jumbo v2, "com.samsung.android.vs.redirect"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v2, "debug.vs.non.redirect"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateIMEConfiguration(ILandroid/content/res/Configuration;)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    if-nez p2, :cond_0

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->getFullScreenStack(Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/SamsungActivityManagerService;->getConfigurationForStackLocked(Lcom/android/server/am/ActivityStack;)Landroid/content/res/Configuration;

    move-result-object p2

    :cond_0
    const-string/jumbo v1, "com.sec.android.inputmethod"

    invoke-direct {p0, v1, p2}, Lcom/android/server/am/SamsungActivityManagerService;->updateProcessConfigurationLocked(Ljava/lang/String;Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->getStackForDisplayLocked(I)Lcom/android/server/am/ActivityStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateProcessConfigurationLocked(Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->findProcessRecordLocked(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const/4 v3, 0x0

    iput v3, v1, Landroid/content/res/Configuration;->seq:I

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, v1}, Landroid/app/IApplicationThread;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private visibilityUpdated()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->applyUpdateVrModeLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAbortedBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    return-void
.end method

.method public addBroadcastSummaryHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastIntentToStringLocked(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v2, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    :cond_0
    return-void
.end method

.method public addCustomStartingWindowData(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;
    .locals 5

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.settings.SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/SamsungStartingWindowManager;->addCustomStartingWinodwData(Landroid/content/ComponentName;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public addToLocaleChangedHistoryLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->-wrap0(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Landroid/os/LocaleList;Landroid/os/LocaleList;)V

    return-void
.end method

.method broadcastIntentToStringLocked(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "    "

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public checkScreenDpSizeChanges(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_1

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungStartingWindowManager;->clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V

    return-void
.end method

.method public clearHomeStack()V
    .locals 10

    const/4 v9, 0x5

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    const/4 v4, 0x0

    const/4 v6, 0x5

    :try_start_0
    filled-new-array {v4, v6}, [I

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/am/SamsungActivityManagerService;->getAllTasksFromStack([I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->getDefaultHomePackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearHomeStack(), defaultHomePkgName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", tasks="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    :cond_1
    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearHomeStack(), removing task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v4

    if-ne v4, v9, :cond_2

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit v5

    return-void
.end method

.method public clearVSDisplay(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->getStackForDisplayLocked(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createVSContainer()I
    .locals 11

    const/4 v10, -0x1

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    new-instance v4, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;

    invoke-direct {v4, p0}, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v4, v8}, Lcom/android/server/am/ActivityStackSupervisor;->createVirtualActivityContainer(Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;I)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v6

    return v10

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    invoke-virtual {v4}, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v8

    iget v9, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setSurface(Landroid/view/Surface;III)V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v8

    iget v9, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v5, v2, v7, v8, v9}, Lcom/android/server/wm/SamsungWindowManagerService;->updateBaseDisplayMetrics(IIII)V

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v7, v3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v8, 0x1

    invoke-virtual {v5, v2, v7, v8}, Lcom/android/server/wm/SamsungWindowManagerService;->setDisplayRotation(IIZ)V

    sget-boolean v5, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "SamsungActivityManager"

    const-string/jumbo v7, "created the VS container"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iput-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    monitor-exit v6

    return v10

    :cond_2
    monitor-exit v6

    return v2

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastQueue;Ljava/io/PrintWriter;Z)V
    .locals 9

    const/4 v8, -0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    move v1, v3

    move v4, v3

    :cond_0
    sget v6, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v4, v8, v6}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v4

    iget-object v6, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    aget-object v5, v6, v4

    if-nez v5, :cond_2

    :goto_0
    if-ne v4, v3, :cond_0

    const/4 v0, -0x1

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    move v1, v3

    move v4, v3

    :cond_1
    sget v6, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v4, v8, v6}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v4

    iget-object v6, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    aget-object v5, v6, v4

    if-nez v5, :cond_5

    :goto_1
    if-ne v4, v3, :cond_1

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-nez v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_3
    const/4 p3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  Aborted Historical broadcasts ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  Aborted Historical Broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ":"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    if-nez v2, :cond_7

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    const/4 p3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  Delayed Historical broadcasts ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  Delayed Historical Broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ":"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public dumpLocaleChangedHistoryLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->-wrap1(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dumpMetaDataLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->-wrap0(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public endRedirectMainDisplayVS(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->destroyVSStack()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->getFullScreenStack(Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public ensureStoppingVS(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    .locals 12

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    const-string/jumbo v2, "com.samsung.android.persistent.downloadable"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    move-object/from16 v0, p9

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p3, 0x1

    const/16 p6, 0x1

    const-string/jumbo v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceStopPackageLocked with revised flags for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getActivityDisplay(Landroid/os/IBinder;)I
    .locals 2

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    return v1
.end method

.method public getApplicationToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getExtraPolicyForMultiResolution()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIMEPid()I
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "com.sec.android.inputmethod"

    invoke-direct {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->findProcessRecordLocked(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getLaunchStackVS(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->needNewContainer(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/SamsungActivityManagerService;->checkAccess(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/SamsungActivityManagerService;->createVSContainer()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return-object v4

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLaunchStackVS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v0, v1, :cond_5

    sget-boolean v1, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SamsungActivityManager"

    const-string/jumbo v2, "getLaunchStackVS: relaunching VS activity, no override"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v4

    :cond_5
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->vrActivityType:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SamsungActivityManager"

    const-string/jumbo v2, "getLaunchStackVS: sending Oculus activity on VS container stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    :cond_7
    const-string/jumbo v1, "com.google.vr.vrcore"

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "SamsungActivityManager"

    const-string/jumbo v2, "getLaunchStackVS: starting DD VR core activity, sending on VS container stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    :cond_9
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "SamsungActivityManager"

    const-string/jumbo v2, "getLaunchStackVS: starting DD activity, finishing VS and starting new activity on fullscreen stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/SamsungActivityManagerService;->hideVSStack()V

    invoke-direct {p0, v5}, Lcom/android/server/am/SamsungActivityManagerService;->getFullScreenStack(Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    :cond_b
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v1, v2, :cond_d

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "SamsungActivityManager"

    const-string/jumbo v2, "getLaunchStackVS: vs inactive, finishing it and starting new activity on fullscreen stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct {p0, v5}, Lcom/android/server/am/SamsungActivityManagerService;->getFullScreenStack(Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    :cond_d
    sget-boolean v1, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "SamsungActivityManager"

    const-string/jumbo v2, "getLaunchStackVS: no override"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object v4
.end method

.method public getResumedStackVS()Lcom/android/server/am/ActivityStack;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTaskInfoFromTaskIdLocked(III)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    iget v3, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "taskType"

    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "lastTaskDescription"

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "resizeable"

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "componentName"

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getTopTaskId()I
    .locals 7

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    const/4 v0, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v0, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    :cond_0
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SamsungActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTopTaskId()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hasKeepAliveActivitiesLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/SamsungActivityManagerService;->isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hideNonVSStack(Lcom/android/server/am/ActivityStack;Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSExiting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eqz v0, :cond_3

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eq p1, v0, :cond_5

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :cond_4
    return v3

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSExiting:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    :cond_6
    return v3

    :cond_7
    return v2
.end method

.method public hideVSStack()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSExiting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSExiting:Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->cancelAppTransition()V

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->flushTransactions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public inVSMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    return v0
.end method

.method public init()V
    .locals 2

    const-string/jumbo v0, "SamsungActivityManager"

    const-string/jumbo v1, "SamsungActivityManagerService init."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->initRelaxedBroadcastActions()V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKillPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKeepAliveProcesses:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mm:exdevice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-virtual {v0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->scheduleLoad()V

    return-void
.end method

.method public isCscVerChanged()Z
    .locals 10

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string/jumbo v7, "DUMMY"

    sget-object v8, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "SamsungActivityManager"

    const-string/jumbo v8, "csc version of property is wrong"

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v7, v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string/jumbo v6, "DUMMY"

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    sget-object v7, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    const/16 v8, 0x400

    invoke-direct {v7, v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    move-object v4, v5

    :cond_2
    :goto_1
    sget-object v7, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    return v7

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    :try_start_4
    const-string/jumbo v7, "SamsungActivityManager"

    const-string/jumbo v8, "Failure reading pre boot csc"

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v2

    :goto_3
    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_5
    throw v7

    :catch_5
    move-exception v3

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catchall_2
    move-exception v7

    move-object v0, v1

    move-object v4, v5

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_3

    :catch_8
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_9
    move-exception v3

    move-object v0, v1

    move-object v4, v5

    goto :goto_2
.end method

.method public isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRelaxedBroadcastAction(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isTopTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTrimApplicaionsScheduled()Z
    .locals 1

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVSClientStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVSVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepStackVS(Lcom/android/server/am/ActivityStack;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    if-eq p1, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSRedirectingDisplayId:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/SamsungActivityManagerService;->hideVSStack()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .locals 36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    const-string/jumbo v31, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v30

    if-eqz v30, :cond_0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Permission Denial: killAllBackgroundProcessesExcept() from pid="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ", uid="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " requires "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v30, "SamsungActivityManager"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v30, Ljava/lang/SecurityException;

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v30

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v29, 0x0

    if-eqz p3, :cond_7

    const/16 v20, 0x1

    :try_start_0
    const-string/jumbo v30, "name"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v30, "kill_packages"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Ljava/util/HashSet;

    move-object v15, v0

    const-string/jumbo v30, "keep_packages"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Ljava/util/HashSet;

    move-object v14, v0

    const-string/jumbo v30, "skip_sdk_version_check"

    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v16, :cond_8

    :try_start_1
    const-string/jumbo v30, "DeX"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    const-string/jumbo v30, "SamsungActivityManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "killAllProcesses mSystemUIProcessRecord="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v30, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->killed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "kill all background except(policy="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ActivityManagerService;->isKeyguardShowing()Z

    move-result v30

    :cond_1
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v8, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v0, v7, :cond_e

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v30, v0

    const/16 v32, 0x2

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    const/16 v24, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKillPackages:Ljava/util/Set;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3

    const/16 v24, 0x1

    :cond_4
    if-eqz v20, :cond_5

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v15, :cond_9

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_9

    const/16 v23, 0x1

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKeepAliveProcesses:Ljava/util/Set;

    move-object/from16 v30, v0

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v30

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/am/SamsungActivityManagerService;->isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z

    move-result v32

    or-int v21, v30, v32

    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->removed:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    :cond_7
    :try_start_2
    const-string/jumbo v16, "multi-resolution"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_9
    if-eqz v14, :cond_5

    :try_start_3
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    const/16 v22, 0x1

    goto :goto_4

    :cond_a
    if-nez v21, :cond_6

    xor-int/lit8 v30, v22, 0x1

    if-eqz v30, :cond_6

    if-nez v29, :cond_b

    if-ltz p1, :cond_b

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    :cond_b
    if-ltz p2, :cond_c

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    if-le v0, v1, :cond_d

    :cond_c
    :goto_6
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->removed:Z

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v30

    :try_start_4
    monitor-exit v31

    throw v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v30

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v30

    :cond_d
    if-nez v24, :cond_c

    if-nez v23, :cond_c

    :try_start_5
    const-string/jumbo v30, "force-keep-alive"

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    goto :goto_6

    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    if-ge v0, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/ProcessRecord;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "kill all background except(policy="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move/from16 v2, v34

    move/from16 v3, v35

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    :cond_10
    :try_start_6
    monitor-exit v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public logIllegalArgumentExceptionLocked(Landroid/os/IBinder;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTopOfTask failed:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " app="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v3, " ar="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v3, "SamsungActivityManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public moveClientToVSContainer(Landroid/os/IBinder;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_1

    return v3

    :cond_1
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    const-string/jumbo v6, "vs-move-client"

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "SamsungActivityManager"

    const-string/jumbo v1, "Failed to reparent the VS client"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v1, "vs-move-client"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    return v2
.end method

.method public moveTaskToBackLocked(IZLandroid/os/Bundle;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZLandroid/os/Bundle;)Z

    move-result v2

    :cond_2
    return v2

    :cond_3
    const-string/jumbo v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Max count exceeded! Cannot set keepAlive for taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->resetActivityKeepAliveLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :cond_5
    return v2
.end method

.method public moveTaskToBackVS(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->bottomTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public needSmoothExitVS()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    :cond_1
    :try_start_1
    const-string/jumbo v3, "SamsungActivityManager"

    const-string/jumbo v4, "VS container stack or client activity should not be null yet"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public notifyAttachApplicationLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    const-string/jumbo v0, "com.android.systemui"

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.systemui"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowManagerService;->attachSystemUIApplicationLocked()V

    :cond_0
    return-void
.end method

.method public notifyNewProcessRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    const-string/jumbo v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "com.android.systemui"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x9

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    const/16 v1, -0x320

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    :cond_1
    return-void
.end method

.method public notifyProcessRemoved(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v1, "com.android.systemui"

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "com.android.systemui"

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    xor-int/lit8 v0, v2, 0x1

    const-string/jumbo v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing non-persistent systemui process: app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->scheduleDumpstateLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_3
    return-void
.end method

.method public notifyRegisterReceiverLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ReceiverList;Landroid/content/IntentFilter;)V
    .locals 5

    invoke-virtual {p2}, Lcom/android/server/am/ReceiverList;->size()I

    move-result v2

    rem-int/lit16 v2, v2, 0x1388

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p3, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyRegisterReceiverLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/am/ReceiverList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " receiver filters registered by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " filter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public notifyRemoveReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    const/16 v5, 0x1388

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lt v2, v5, :cond_2

    const-string/jumbo v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyRemoveReceiverLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " receivers registered by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ReceiverList;

    invoke-virtual {v1}, Lcom/android/server/am/ReceiverList;->size()I

    move-result v2

    if-lt v2, v5, :cond_3

    const-string/jumbo v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyRemoveReceiverLocked: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/ReceiverList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " receiver filters registered by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notifyTaskDescriptionSetLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notifyTaskRemovedLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notifyTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLockTaskModeChanged(I)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->onLockTaskModeChanged(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Framework_SupportBroadcastScreenPinning"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v5, "com.samsung.android.permission.LOCK_TASK_MODE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideActivityOptionsVS(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IActivityContainer;)Landroid/os/Bundle;
    .locals 8

    iget-boolean v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "overrideActivityOptionsVS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_6

    const-string/jumbo v4, "off_vs"

    const/4 v6, 0x0

    invoke-direct {p0, p2, v4, v6}, Lcom/android/server/am/SamsungActivityManagerService;->getIntentBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.google.vrtoolkit.cardboard.CONFIGURE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Starting activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with off_vs, finishing VS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/am/SamsungActivityManagerService;->getFullScreenStack(Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez p3, :cond_e

    move-object p3, v0

    :cond_4
    :goto_1
    monitor-exit v5

    :cond_5
    return-object p3

    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_8

    const-string/jumbo v4, "on_vs_display"

    const/4 v6, 0x0

    invoke-direct {p0, p2, v4, v6}, Lcom/android/server/am/SamsungActivityManagerService;->getIntentBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Starting activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " on client\'s stack"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    goto :goto_0

    :cond_8
    if-nez p4, :cond_d

    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_9

    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Starting activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with no display given"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz p1, :cond_c

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_c

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_c

    :goto_2
    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "SamsungActivityManager"

    const-string/jumbo v6, "VS client initiated launch"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo v4, "debug.vs.non.redirect.display"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Launch on main display redirected to display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->getStackForDisplayLocked(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Starting activity on stack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_c
    :try_start_2
    const-string/jumbo v4, "vs_launched"

    const/4 v6, 0x0

    invoke-direct {p0, p2, v4, v6}, Lcom/android/server/am/SamsungActivityManagerService;->getIntentBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_d
    instance-of v4, p4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v4, :cond_3

    check-cast p4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, p4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Starting activity on requested display\'s stack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public overrideLaunchFlagsVS(ILcom/android/server/am/ActivityRecord;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    const v0, -0x8000001

    and-int/2addr v0, p1

    return v0
.end method

.method public printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V
    .locals 4

    const-string/jumbo v0, ", [disp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string/jumbo v0, ", fin="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string/jumbo v0, ", dur="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v2, v2, p3

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :goto_0
    const-string/jumbo v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "--"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 22

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    const/16 v4, 0x3e8

    if-eq v13, v4, :cond_0

    const/16 v4, 0x3e9

    if-ne v13, v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v16

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v10, "queryRegisteredReceiverPackages"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v7, v2}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_3

    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    const/4 v14, 0x0

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_2

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/BroadcastFilter;

    iget-object v4, v12, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x7d0

    if-eq v13, v4, :cond_0

    const/16 v4, 0x3ea

    if-eq v13, v4, :cond_0

    const/16 v4, 0x403

    if-eq v13, v4, :cond_0

    if-eqz v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: not allowed to query registered receiver packages from pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v4, "SamsungActivityManager"

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v19, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v21

    return-object v19

    :catchall_0
    move-exception v4

    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v21

    throw v4
.end method

.method registerAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 0

    return-void
.end method

.method public registerAppNotRespondingProcLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAppNotRespodingProcs:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public registerTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
    .locals 0

    return-void
.end method

.method registerTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 0

    return-void
.end method

.method removeAllRecentTasksLocked(I)Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    if-nez v1, :cond_1

    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/SamsungActivityManagerService;->removeTaskByIdIfNeededLocked(Lcom/android/server/am/TaskRecord;I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method removeTaskByIdIfNeededLocked(Lcom/android/server/am/TaskRecord;I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-eq v4, v5, :cond_0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    and-int/lit8 v6, p2, 0x10

    if-nez v6, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z

    return-void
.end method

.method public removeTaskLocked(II)Z
    .locals 3

    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_0

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->removeAllRecentTasksLocked(I)Z

    move-result v1

    return v1

    :cond_1
    and-int/lit8 v1, p2, 0x10

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_4
    throw v1
.end method

.method public resetActivityKeepAliveLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetUpdateConfigurationCallerLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->-wrap2(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/lang/String;)V

    return-void
.end method

.method public restoreTask(I)V
    .locals 6

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreTask("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->stayInForeground(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public resumedActivityVS(Lcom/android/server/am/ActivityRecord;)V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v4, :cond_4

    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SamsungActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resumedActivityVS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v4

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_1

    invoke-virtual {v1, v7, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z

    :cond_4
    return-void
.end method

.method public scheduleDumpstateLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleDumpstate: app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public scheduleTrimApplicaions(Z)V
    .locals 2

    sget-object v1, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V
    .locals 0

    return-void
.end method

.method public setCustomImage(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    monitor-exit v0

    if-nez v7, :cond_0

    return v8

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget v3, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    :cond_1
    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->setCustomImage(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z

    move-result v8

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    return v8

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCustomImageForPackage(Landroid/content/ComponentName;ILandroid/os/ParcelFileDescriptor;I)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-nez v8, :cond_0

    return v9

    :catch_0
    move-exception v6

    return v9

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    :cond_1
    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->setCustomImage(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z

    move-result v9

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    return v9

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIMEDisplay(I)V
    .locals 2

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSImeDisplayId:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SamsungActivityManagerService;->updateIMEConfiguration(ILandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public setRedirectingDisplay(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSRedirectingDisplayId:I

    return-void
.end method

.method public setSupportsPictureInPicture(Z)Z
    .locals 5

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting setSupportsPictureInPicture to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUpdateConfigurationCallerLocked(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    invoke-static {v2, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->-wrap2(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVSMode(ZLandroid/os/IBinder;)V
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVSMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    iput-boolean p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSExiting:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSImeDisplayId:I

    const-string/jumbo v0, "sys.vs.visible"

    iget-boolean v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungWindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_STARTING_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungStartingWindowManager;

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    return-void
.end method

.method public skipReusedAppNotRespondingProc(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAppNotRespodingProcs:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    monitor-exit v3

    if-eqz v1, :cond_0

    const-string/jumbo v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skipReusedAppNotRespondingProc: return true for app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", initialPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public skipUpdateConfigFor(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "com.google.vr.vrcore"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSImeDisplayId:I

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v0, "com.sec.android.inputmethod"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public skipUpdateVrModeFor(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSExiting:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public startRedirectMainDisplayVS(Z)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungActivityManager"

    const-string/jumbo v2, "VS stack should have been null!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->destroyVSStack()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method unregisterAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 0

    return-void
.end method

.method public unregisterTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
    .locals 0

    return-void
.end method

.method unregisterTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 0

    return-void
.end method

.method public updateFocusStackVS(Lcom/android/server/am/ActivityStack;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eq p1, v0, :cond_2

    const-string/jumbo v0, "SamsungActivityManager"

    const-string/jumbo v1, "Clearing VS stack after focus moved"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :cond_2
    return-void
.end method

.method public updateOomAdj()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updatePreBootCscFile()V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x400

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v5, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    move-object v3, v4

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    :try_start_4
    const-string/jumbo v5, "SamsungActivityManager"

    const-string/jumbo v6, "Failure writing last done pre-boot receivers"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v5, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v5

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v5

    move-object v0, v1

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    goto :goto_2
.end method

.method public updateVrCoreConfiguration()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "com.google.vr.vrcore"

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainerStack:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->getConfigurationForStackLocked(Lcom/android/server/am/ActivityStack;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->updateProcessConfigurationLocked(Ljava/lang/String;Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updatedTopTaskVS(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
    .locals 5

    iget-boolean v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-ne p2, v2, :cond_4

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    const-string/jumbo v2, "sys.vs.visible"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v2, :cond_1

    const-string/jumbo v3, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VS client activity now "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_5

    const-string/jumbo v2, "visible"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_6

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    if-eqz p2, :cond_7

    iget v2, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_3
    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->notifyUpdatedDisplayTopTask(II)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "hidden"

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_7
    const/4 v2, -0x1

    goto :goto_3
.end method
