.class public Lcom/android/incallui/InCallApp;
.super Landroid/app/Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;,
        Lcom/android/incallui/InCallApp$SyncRoot;
    }
.end annotation


# static fields
.field public static final ACTION_ACCEPT_VIDEO_UPGRADE_REQUEST:Ljava/lang/String; = "com.android.incallui.ACTION_ACCEPT_VIDEO_UPGRADE_REQUEST"

.field public static final ACTION_ANSWER_VIDEO_INCOMING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

.field public static final ACTION_ANSWER_VOICE_INCOMING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

.field public static final ACTION_BLOCK_SMART_CALL:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_BLOCK_SMART_CALL"

.field public static final ACTION_CALL_ANSWER:Ljava/lang/String; = "com.android.incallui.ACTION_CALL_ANSWER"

.field public static final ACTION_CALL_END:Ljava/lang/String; = "com.samsung.incallui.ACTION_CALL_END"

.field public static final ACTION_CALL_MUTE:Ljava/lang/String; = "com.samsung.incallui.ACTION_CALL_MUTE"

.field public static final ACTION_CALL_REJECT:Ljava/lang/String; = "com.android.incallui.ACTION_CALL_REJECT"

.field public static final ACTION_CALL_RESUME:Ljava/lang/String; = "com.android.incallui.ACTION_CALL_RESUME"

.field public static final ACTION_CALL_SPEAKER:Ljava/lang/String; = "com.samsung.incallui.ACTION_CALL_SPEAKER"

.field public static final ACTION_CLEAR_REJECT_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_CLEAR_REJECT_NOTIFICATION"

.field public static final ACTION_DECLINE_INCOMING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

.field public static final ACTION_DECLINE_VIDEO_UPGRADE_REQUEST:Ljava/lang/String; = "com.android.incallui.ACTION_DECLINE_VIDEO_UPGRADE_REQUEST"

.field public static final ACTION_DELETE_REJECT_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_DELETE_REJECT_NOTIFICATION"

.field public static final ACTION_HANG_UP_ONGOING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

.field public static final ACTION_REPORT_SMART_CALL:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_REPORT_SMART_CALL"

.field public static final ACTION_SHOW_CALL_SCREEN:Ljava/lang/String; = "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN"

.field public static final ACTION_SHOW_CALL_SCREEN_ON_MINI_CONTROLLER:Ljava/lang/String; = "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN_ON_MINI_CONTROLLER"

.field public static final ACTION_SHOW_INCALL:Ljava/lang/String; = "com.samsung.rcs.android.incallui.ACTION_SHOW_INCALL"

.field public static final ACTION_VOICE_CALL:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_VOICE_CALL"

.field private static final DEVICE_CONFIG_CHANGED:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_CONFIG_CHANGED"

.field private static sMe:Lcom/android/incallui/InCallApp;


# instance fields
.field private final SAMSUNG_ANALYTICS_TRACKING_ID:Ljava/lang/String;

.field private final SAMSUNG_ANALYTICS_VERSION:Ljava/lang/String;

.field private mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

.field private mIsLocked:Z

.field private final mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/android/incallui/InCallApp$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallApp$1;-><init>(Lcom/android/incallui/InCallApp;)V

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallApp;->mIsLocked:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->versionName:Ljava/lang/String;

    const-string v0, "8.1"

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->SAMSUNG_ANALYTICS_VERSION:Ljava/lang/String;

    const-string v0, "753-399-1005248"

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->SAMSUNG_ANALYTICS_TRACKING_ID:Ljava/lang/String;

    sput-object p0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallApp;
    .locals 2

    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No InCallApp here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    return-object v0
.end method


# virtual methods
.method public createIMSManagerWrapper()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    :cond_0
    return-void
.end method

.method public getAppVerionName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallApp;->versionName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-nez v0, :cond_0

    const-string v0, "createIMSManagerWrapper "

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->createIMSManagerWrapper()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    return-object v0
.end method

.method public getSyncRoot()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    return-object v0
.end method

.method public isLocked()Z
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallApp;->mIsLocked:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lock()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    :try_start_0
    const-string v0, "acquire UI lock"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallApp;->mIsLocked:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "perf - onCreate."

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->setSAConfiguration()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallApp;->setAppVerionName(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getAppVerionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->makeFeature(Landroid/content/Context;)V

    const-string v0, "enabled"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->createIMSManagerWrapper()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->makeConfig()V

    const-string v0, "abbreviated_dialing_codes_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->checkCscChameleonFile()V

    :cond_1
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->telephonyManager(Landroid/content/Context;)V

    :cond_3
    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "onCreate "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_init(Landroid/content/Context;)V

    :cond_5
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    new-instance v0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/util/SecUncaughtExceptionHandler;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_6
    const-string v0, "callprotect_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/whitepages/nameid/f;->a()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "InCall"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/ia/IAStateListener;->getInstance()Lcom/android/incallui/ia/IAStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$i;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setAppVerionName(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/incallui/InCallApp;->versionName:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSAConfiguration()V
    .locals 2

    new-instance v0, Lcom/samsung/a/a/a/b;

    invoke-direct {v0}, Lcom/samsung/a/a/a/b;-><init>()V

    const-string v1, "8.1"

    invoke-virtual {v0, v1}, Lcom/samsung/a/a/a/b;->c(Ljava/lang/String;)Lcom/samsung/a/a/a/b;

    move-result-object v0

    const-string v1, "753-399-1005248"

    invoke-virtual {v0, v1}, Lcom/samsung/a/a/a/b;->a(Ljava/lang/String;)Lcom/samsung/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/a/a/a/b;->c()Lcom/samsung/a/a/a/b;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/a/a/a/d;->a(Landroid/app/Application;Lcom/samsung/a/a/a/b;)V

    return-void
.end method

.method public unlock()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    :try_start_0
    const-string v0, "release UI lock"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallApp;->mIsLocked:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->removeMsgCheckUILocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
