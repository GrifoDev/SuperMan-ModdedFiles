.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$1;,
        Lcom/android/server/power/ShutdownThread$2;,
        Lcom/android/server/power/ShutdownThread$3;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$Led;,
        Lcom/android/server/power/ShutdownThread$LogFileWriter;,
        Lcom/android/server/power/ShutdownThread$Slog;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field public static final AUDIT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.audit_safemode"

.field private static final BIN_TYPE_PRODUCTSHIP:Z

.field private static final BIN_TYPE_USER:Z

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final FORCE_SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.property_forcedshutdown"

.field private static final LedOffValue:I = 0x6

.field private static final LedOnValue:I = 0x6

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MINIMODE_SLEEP_TIME:I = 0x12c

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static M_STYLE_CONFIRM:Z = false

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final POWER_CONNECTED:I = 0x1

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REASON_NO_POWER:Ljava/lang/String; = "no power"

.field private static final REASON_SILENT:Ljava/lang/String; = "silent.sec"

.field private static final REBOOT_CHARGERMODE_PROPERTY:Ljava/lang/String; = "ro.rebootchargermode"

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final RMT_SYNC_PROP:Ljava/lang/String; = "storage.efs_sync.done"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TIMEOUT_EXTENDS_RATIO:I = 0x8

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static buttonView:Landroid/widget/LinearLayout;

.field private static coverOpen:Z

.field private static final delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private static fadeoutView:Landroid/widget/RelativeLayout;

.field private static mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private static mOemClassLoader:Ldalvik/system/PathClassLoader;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private static mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private static mTts:Landroid/speech/tts/TextToSpeech;

.field private static m_rebootByBixby:Z

.field private static m_shutdownByBixby:Z

.field private static rootView:Landroid/widget/RelativeLayout;

.field private static sConfirmDialog:Landroid/app/Dialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static s_Context:Landroid/content/Context;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic -get12()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic -get14()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get15()Landroid/speech/tts/TextToSpeech;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -get16()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    return v0
.end method

.method static synthetic -get17()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    return v0
.end method

.method static synthetic -get18()Landroid/widget/RelativeLayout;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get19()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    return v0
.end method

.method static synthetic -get20()Lcom/android/server/power/ShutdownThread;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -get21()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3()Landroid/widget/LinearLayout;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return v0
.end method

.method static synthetic -get5()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic -get6()Lcom/android/server/power/ShutdownDialog;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic -get7()Landroid/widget/RelativeLayout;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9()Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return p0
.end method

.method static synthetic -set2(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic -set3(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic -set4(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/cover/CoverState;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()V
    .locals 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->animateDismiss()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap3()V
    .locals 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->initBixbyVariables()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->runConfirm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string/jumbo v1, "user"

    const-string/jumbo v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    new-instance v1, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "americano"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mocha"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    sput-object v5, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    new-instance v1, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 1

    const-string/jumbo v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    return-void
.end method

.method public static IsShutDownConfirming()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return v0
.end method

.method public static IsShutDownStarted()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "shut down already running , return true"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static animateDismiss()V
    .locals 4

    const-wide/16 v2, 0x12c

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "ButtonView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x1

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "!@Shutdown sequence already running, returning."

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :cond_0
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->startState()V

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->openLogFileWriter()V

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@beginShutdownSequence"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :goto_0
    const-string/jumbo v4, "powerofftriggered"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "isShutDownForRCS"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_2
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v6, "ShutdownThread-cpu"

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v4, "shutdown"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_3
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v6, "ShutdownThread-screen"

    const/16 v7, 0x1a

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@normal"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "recovery-update"

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startRecoveryDialog(Landroid/content/Context;)V

    :goto_3
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startShutdownThread()V

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "!@No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    goto :goto_3
.end method

.method private static blackMiniModeBar(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0, v4, v4}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public static canGlobalActionsShow()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownConfirming()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0
.end method

.method private static createBeforeMConfirmDialog(Landroid/content/Context;IILcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;
    .locals 11

    const/4 v4, 0x2

    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    sget-object v9, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v9}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v9

    sput-boolean v9, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    :cond_0
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v9, :cond_2

    const v8, 0x10406ee

    :goto_0
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v9, :cond_1

    const/16 v9, 0x8

    if-ne v4, v9, :cond_4

    :cond_1
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v9, :cond_3

    const/16 v9, 0x8

    if-ne v4, v9, :cond_3

    const-string/jumbo v9, "ShutdownThread"

    const-string/jumbo v10, "clear type confirm dialog"

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/app/AlertDialog$Builder;

    const v9, 0x10304fa

    invoke-direct {v6, p0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_1
    invoke-virtual {v6, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v9, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v9}, Lcom/android/server/power/ShutdownThread$8;-><init>()V

    const v10, 0x1040009

    invoke-virtual {v6, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    :goto_2
    return-object v5

    :cond_2
    const v8, 0x1040120

    goto :goto_0

    :cond_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x5

    invoke-direct {v6, p0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    invoke-direct {v7, p0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p2}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v7, p1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    new-instance v9, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v9, p0}, Lcom/android/server/power/ShutdownThread$9;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    const v9, 0x1040009

    invoke-virtual {v7, v9, p3}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v7}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x833

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x112000d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v9, 0x1

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v9, 0x0

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v1}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    move-object v5, v1

    goto :goto_2
.end method

.method private static createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 10

    const/4 v9, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const-string/jumbo v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_1

    const v5, 0x104012d

    :goto_0
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_3

    const v0, 0x104012e

    :goto_1
    new-instance v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v6, :cond_b

    :cond_0
    invoke-static {p0, v5, v0, v1}, Lcom/android/server/power/ShutdownThread;->createBeforeMConfirmDialog(Landroid/content/Context;IILcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;

    move-result-object v2

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "createBeforeMConfirmDialog"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v2, v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v2

    :cond_1
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_2

    const v5, 0x10406ee

    goto :goto_0

    :cond_2
    const v5, 0x1040135

    goto :goto_0

    :cond_3
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_4

    const v0, 0x10407dc

    goto :goto_1

    :cond_4
    const v0, 0x10407db

    goto :goto_1

    :cond_5
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_9

    if-ne v4, v9, :cond_8

    const v0, 0x10406ef

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "vzw"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const v0, 0x1040886

    goto :goto_1

    :cond_8
    const v0, 0x10406d7

    goto :goto_1

    :cond_9
    if-ne v4, v9, :cond_a

    const v0, 0x104012c

    goto :goto_1

    :cond_a
    const v0, 0x104012b

    goto :goto_1

    :cond_b
    invoke-static {p0, v5, v0}, Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object v2

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "createMConfirmDialog"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private static createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
    .locals 7

    new-instance v0, Lcom/android/server/power/ShutdownThread$4;

    const v2, 0x1030011

    move-object v1, p0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$4;-><init>(Landroid/content/Context;ILandroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$4;->init()Landroid/app/Dialog;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v6
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 12

    const-string/jumbo v1, "com.qti.server.power.ShutdownOem"

    const-string/jumbo v2, "rebootOrShutdown"

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v5

    :try_start_2
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown exception while trying to invoke "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to find class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v6

    :try_start_3
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to find method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v4

    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown exception while loading class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    :try_start_0
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v6, p0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    const-string/jumbo v6, "rebootOrShutdown"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    return v11

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@unchecked exception raised"

    invoke-static {v6, v7, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    return v10

    :catch_1
    move-exception v4

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@call method fail rebootOrShutdown"

    invoke-static {v6, v7, v4}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v10

    :catch_2
    move-exception v2

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@unchecked exception raised"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :catch_3
    move-exception v1

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@can\'t found class"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .locals 12

    const/16 v11, 0x1b0

    const/4 v10, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/log/power_off_reset_reason.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2800

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "power_off_reset_reason.txt is re-created."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "rename to power_off_reset_reason_backup.txt fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private static initBixbyVariables()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-object v0, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    sput-object v0, Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static isConfirmDialog()Z
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPoweredPlugged()Z
    .locals 6

    const/4 v3, 0x1

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "plugged"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isTablet()Z
    .locals 2

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 10

    const/16 v1, 0x3a

    const-string/jumbo v0, "com.google.android.marvin.talkback"

    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    :cond_0
    move-object v2, v7

    invoke-virtual {v7, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_1

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    return v8

    :cond_2
    const/4 v8, 0x0

    return v8
.end method

.method private static needQcOemShutdown()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "ro.chipname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "8084"

    aput-object v3, v2, v4

    const-string/jumbo v3, "exynos"

    aput-object v3, v2, v7

    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v2, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/oem-services.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    return v7
.end method

.method private static needSyncQcRmtStorage()Z
    .locals 4

    const-string/jumbo v2, "ro.hardware"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qcom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "storage.efs_sync.done"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static readSalesCode()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static rebootByBixby(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "rebootByBixby confirm by reboot twice"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->shutdownConfirmByBixby(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rebootByBixby reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    invoke-static {p0, v4, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 9

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@call oem shutdown..."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "ro.baseband"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->needSyncQcRmtStorage()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->syncQcRmtStorage()V

    :cond_0
    const-string/jumbo v1, "com.android.server.power.ShutdownOem"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->needQcOemShutdown()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1, p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    :goto_0
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "waitForAnimEnd"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "!@"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string/jumbo v6, "reboot : "

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_6

    const-string/jumbo v6, "null"

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ShutdownThread"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->waitIfTimeoutDumpWorking()V

    if-eqz p1, :cond_7

    const-string/jumbo v6, "poweroff_sound=suspend"

    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    :try_start_0
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@Performing low-level shutdown..."

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v1, "com.qti.server.power.ShutdownOem"

    invoke-static {v1, p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "shutdown : "

    goto :goto_1

    :cond_6
    move-object v6, p2

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v6, v7, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_3

    :cond_7
    if-eqz p0, :cond_3

    new-instance v5, Landroid/os/SystemVibrator;

    invoke-direct {v5, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    const-wide/16 v6, 0x1f4

    :try_start_1
    sget-object v8, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    const-wide/16 v6, 0x1f4

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v2

    const-string/jumbo v6, "ShutdownThread"

    const-string/jumbo v7, "!@Failed to vibrate during shutdown."

    invoke-static {v6, v7, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_4
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot safe reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", confirm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void

    :cond_2
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "safe mode is not allowed by IT admin"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 2

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private static runConfirm(Landroid/content/Context;)V
    .locals 14

    const-wide/16 v12, 0x12c

    const/high16 v10, 0x3f800000    # 1.0f

    const v9, 0x3e2e147b    # 0.17f

    const-string/jumbo v5, "keyguard"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_0

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v5, :cond_2

    :cond_0
    const/16 v1, 0x12c

    sget-object v5, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "alpha"

    const/16 v7, 0x99

    const/16 v8, 0xff

    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e4ccccd    # 0.2f

    invoke-direct {v6, v9, v9, v7, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v5, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v5, p0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "call secure lock"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendBendedPendingIntent(Landroid/content/Context;)V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .locals 10

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yy/MM/dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_4
    throw v7

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method

.method private static sendBendedPendingIntent(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v4, "keyguard"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x8000000

    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "dismissType"

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "send secure lock intent"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private static sendMiniModeUiIntent(Landroid/content/Context;ZZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    const-string/jumbo v2, "ShutdownThread"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static setInputKeysDisable(Z)V
    .locals 5

    const-string/jumbo v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ServiceManager.checkService fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStartedShutdown to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "error occur while input disable"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$13;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    invoke-static {p0, p1, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method public static shutdownByBixby(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "shutdownByBixby confirm by shutdown twice"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->shutdownConfirmByBixby(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdownByBixby reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->m_rebootByBixby:Z

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->m_shutdownByBixby:Z

    invoke-static {p0, v4, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static shutdownConfirmByBixby(Z)V
    .locals 3

    const-string/jumbo v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdownConfirmByBixby, Confirm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->animateDismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->runConfirm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .locals 9

    const/4 v8, 0x0

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v7, "!@Request to shutdown already running, returning."

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v7, "!@duplicate shutdown confirm dialog request."

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v5, :cond_3

    :cond_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez p2, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    :goto_0
    monitor-exit v6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v5, 0x103012b

    invoke-direct {v0, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v5, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    if-eqz p1, :cond_4

    const-string/jumbo v5, "silent.sec"

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    const-wide/16 v6, 0x32

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v8}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    :try_start_4
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v7, "Shutdown Disabled by Administrator"

    invoke-static {v5, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_7
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/android/server/power/ShutdownThread;->s_Context:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    :cond_8
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v5

    sput-object v5, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v5, :cond_5

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->blackMiniModeBar(Landroid/content/Context;)V

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "InterruptedException"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v4, v8, v10

    const/4 v2, 0x1

    new-array v7, v2, [Z

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/server/power/ShutdownThread$16;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/ShutdownThread$16;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    int-to-long v8, p1

    :try_start_0
    invoke-virtual {v1, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    aget-boolean v2, v7, v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v6, "Timed out waiting for NFC and Radio shutdown."

    invoke-static {v2, v6}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static startGoogleShutdownDialog(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x1040120

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x104012a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private static startRecoveryDialog(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "recovery-update"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    const v1, 0x1040124

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v1, :cond_2

    const v1, 0x1040125

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v0, v1, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x1040127

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const v1, 0x1040128

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x1040129

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_1
.end method

.method private startShutdownDialog()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/power/ShutdownThread$10;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "ShutdownDialog start wait"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "ShutdownDialog start wait fail"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static startShutdownDialog(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "Shutdown animation will start"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/LibQmg;->checkSupportQmg()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const-string/jumbo v1, "silent.sec"

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownDialog;->setSilentShutdown(Z)V

    :cond_1
    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->prepareShutdown()V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->show()V

    :goto_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->show()V

    :cond_2
    return-void

    :cond_3
    sput-object v3, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startGoogleShutdownDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static startShutdownThread()V
    .locals 6

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$11;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$11;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "Android will be shutdown"

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$12;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$12;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static syncQcRmtStorage()V
    .locals 7

    const/16 v0, 0x64

    const-string/jumbo v4, "storage.efs_sync.done"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_0

    const-string/jumbo v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "!@rmtStorage sync not yet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v4, "storage.efs_sync.done"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static systemShutdown(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v6, 0x11

    new-array v3, v6, [D

    fill-array-data v3, :array_0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    const/16 v6, 0xf

    if-le v1, v6, :cond_0

    const/16 v1, 0xf

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_0
    new-instance v6, Landroid/speech/tts/TextToSpeech;

    new-instance v7, Lcom/android/server/power/ShutdownThread$19;

    invoke-direct {v7, v4, v5, p1}, Lcom/android/server/power/ShutdownThread$19;-><init>(DLjava/lang/String;)V

    invoke-direct {v6, p0, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-void

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    :array_0
    .array-data 8
        0x0
        0x3f7cac083126e979L    # 0.007
        0x3f847ae147ae147bL    # 0.01
        0x3f916872b020c49cL    # 0.017
        0x3f9999999999999aL    # 0.025
        0x3f9eb851eb851eb8L    # 0.03
        0x3fa1eb851eb851ecL    # 0.035
        0x3fa810624dd2f1aaL    # 0.047
        0x3faeb851eb851eb8L    # 0.06
        0x3fb4395810624dd3L    # 0.079
        0x3fb999999999999aL    # 0.1
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fc47ae147ae147bL    # 0.16
        0x3fd3333333333333L    # 0.3
        0x3fe6666666666666L    # 0.7
        0x0
        0x401c000000000000L    # 7.0
    .end array-data
.end method

.method private uncrypt()V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "Calling uncrypt and monitoring the progress..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/power/ShutdownThread$17;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$17;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const/4 v5, 0x1

    new-array v0, v5, [Z

    aput-boolean v8, v0, v8

    new-instance v3, Lcom/android/server/power/ShutdownThread$18;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/power/ShutdownThread$18;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-wide/32 v6, 0xdbba0

    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-boolean v5, v0, v8

    if-nez v5, :cond_0

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "Timed out waiting for uncrypt."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "uncrypt finished."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const v6, 0x1040127

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v6, 0x64

    invoke-direct {v5, v6, v1}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v5}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog()V

    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static waitIfTimeoutDumpWorking()V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Wait for dumpstate"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Dumpstate finished "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Dumpstate timeouted!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "delayDumpLock TryLock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method actionDoneMount()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 34

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->-wrap0()V

    new-instance v6, Lcom/android/server/power/ShutdownThread$14;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$14;-><init>(Lcom/android/server/power/ShutdownThread;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x5b

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Sending shutdown broadcast..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_a

    const-string/jumbo v2, "no power"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0x13880

    add-long v20, v4, v8

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v20, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_b

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@Shutdown broadcast timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_2
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Shutting down activity manager..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    if-eqz v11, :cond_3

    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_4
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/PackageManagerService;

    if-eqz v26, :cond_5

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_6
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_7
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_d

    new-instance v22, Ljava/io/File;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@/proc/sysrq-trigger not exists!"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string/jumbo v2, "0"

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, ""

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    goto/16 :goto_2

    :cond_b
    :try_start_2
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_c

    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v32

    const-wide v32, 0x40c3880000000000L    # 10000.0

    div-double v8, v8, v32

    double-to-int v0, v8

    move/from16 v31, v0

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v17

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    :catch_1
    move-exception v13

    goto/16 :goto_4

    :cond_d
    new-instance v25, Lcom/android/server/power/ShutdownThread$15;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$15;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Shutting down MountService"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x7530

    add-long v18, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v24

    new-instance v22, Ljava/io/File;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@MountService shutdown skip"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v18, v8

    const-string/jumbo v2, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "!@MountService delay : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", systemTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_16

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@Shutdown wait timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_e
    monitor-exit v4

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    :cond_f
    const-string/jumbo v2, "ro.rebootchargermode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v2, "sys.property_forcedshutdown"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!@Check power connected"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->isPoweredPlugged()Z

    move-result v27

    const-string/jumbo v2, "true"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_10

    const-string/jumbo v2, "1"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_10
    :goto_6
    const-string/jumbo v2, "ro.alarm_boot"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v23, :cond_12

    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    const-string/jumbo v2, "/persist/alarm/powerOffAlarmHandle"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string/jumbo v2, "mrvl"

    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "power_off=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_13
    const-string/jumbo v4, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "!@ run, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "reboot"

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " requested "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_19

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    return-void

    :cond_14
    if-eqz v24, :cond_15

    :try_start_6
    invoke-interface/range {v24 .. v25}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    :catch_2
    move-exception v16

    :try_start_7
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_15
    :try_start_8
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "!@MountService unavailable for shutdown"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_5

    :cond_16
    const-wide/16 v8, 0x7530

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v32

    const-wide v32, 0x40dd4c0000000000L    # 30000.0

    div-double v8, v8, v32

    double-to-int v0, v8

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x12

    :try_start_9
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_5

    :catch_3
    move-exception v17

    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_5

    :cond_17
    if-eqz v27, :cond_10

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const-string/jumbo v2, "charging"

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    goto/16 :goto_6

    :cond_18
    const-string/jumbo v2, "shutdown"

    goto/16 :goto_7

    :cond_19
    const-string/jumbo v2, "null"

    goto/16 :goto_8
.end method
