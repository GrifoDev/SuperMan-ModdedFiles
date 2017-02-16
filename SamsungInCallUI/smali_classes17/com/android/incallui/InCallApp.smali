.class public Lcom/android/incallui/InCallApp;
.super Landroid/app/Application;
.source "InCallApp.java"


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

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 62
    new-instance v0, Lcom/android/incallui/InCallApp$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallApp$1;-><init>(Lcom/android/incallui/InCallApp;)V

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallApp;->mIsLocked:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->versionName:Ljava/lang/String;

    .line 116
    const-string v0, "0.1"

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->SAMSUNG_ANALYTICS_VERSION:Ljava/lang/String;

    .line 117
    const-string v0, "753-399-1005248"

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->SAMSUNG_ANALYTICS_TRACKING_ID:Ljava/lang/String;

    .line 121
    sput-object p0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    .line 122
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallApp;
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No InCallApp here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    return-object v0
.end method


# virtual methods
.method public createIMSManagerWrapper()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/android/incallui/service/ims/IMSManagerWrapper;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallApp;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    .line 376
    :cond_0
    return-void
.end method

.method public getAppVerionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallApp;->versionName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-nez v0, :cond_0

    .line 380
    const-string v0, "createIMSManagerWrapper "

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 381
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->createIMSManagerWrapper()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    return-object v0
.end method

.method public getSyncRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    return-object v0
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallApp;->mIsLocked:Z

    monitor-exit v1

    return v0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lock()V
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    .line 347
    :try_start_0
    const-string v0, "acquire UI lock"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallApp;->mIsLocked:Z

    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 127
    const-string v0, "perf - onCreate."

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->setSAConfiguration()V

    .line 131
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallApp;->setAppVerionName(Ljava/lang/String;)V

    .line 132
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

    .line 134
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->makeFeature(Landroid/content/Context;)V

    .line 135
    const-string v0, "enabled"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->createIMSManagerWrapper()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->initialize(Landroid/content/Context;)V

    .line 139
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->makeConfig()V

    .line 141
    const-string v0, "abbreviated_dialing_codes_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->checkCscChameleonFile()V

    .line 144
    :cond_1
    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roaming_enhancement"

    .line 145
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    :cond_2
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->telephonyManager(Landroid/content/Context;)V

    .line 148
    :cond_3
    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    :cond_4
    const-string v0, "onCreate "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_init(Landroid/content/Context;)V

    .line 155
    :cond_5
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 156
    new-instance v0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;

    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 157
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/util/SecUncaughtExceptionHandler;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 156
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 159
    :cond_6
    return-void
.end method

.method public setAppVerionName(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    .line 362
    :try_start_0
    iput-object p1, p0, Lcom/android/incallui/InCallApp;->versionName:Ljava/lang/String;

    .line 363
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSAConfiguration()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v1, "0.1"

    .line 164
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    const-string v1, "753-399-1005248"

    .line 165
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 162
    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 167
    return-void
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/incallui/InCallApp;->mSyncRoot:Lcom/android/incallui/InCallApp$SyncRoot;

    monitor-enter v1

    .line 354
    :try_start_0
    const-string v0, "release UI lock"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallApp;->mIsLocked:Z

    .line 356
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->removeMsgCheckUILocked()V

    .line 357
    monitor-exit v1

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
