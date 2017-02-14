.class public Lcom/android/server/accessibility/GestureWakeup;
.super Ljava/lang/Object;
.source "GestureWakeup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/GestureWakeup$1;,
        Lcom/android/server/accessibility/GestureWakeup$2;
    }
.end annotation


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "GestureWakeup"

.field private static final TIMEOUT:I = 0x1

.field static mContext:Landroid/content/Context;

.field private static mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

.field private static mPM:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mWakelockSequence:I

.field private static sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;


# instance fields
.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mIsSettingGestureWakeUp:Z

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mWakeLockHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/GestureWakeup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/GestureWakeup;->handleTimeout(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/GestureWakeup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/GestureWakeup;->launchGestureWakeup()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    new-instance v0, Lcom/android/server/accessibility/GestureWakeup$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$1;-><init>(Lcom/android/server/accessibility/GestureWakeup;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mWakeLockHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/GestureWakeup$2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/GestureWakeup$2;-><init>(Lcom/android/server/accessibility/GestureWakeup;)V

    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    sput-object p1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    return-void
.end method

.method private UnregisterApproachListener()V
    .locals 3

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    const-string/jumbo v0, "GestureWakeup"

    const-string/jumbo v1, "GestureWakeupService : UnregisterApproachListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private finishGestureWakeup()V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "air_motion_wake_up"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/android/server/accessibility/GestureWakeup;->UnregisterApproachListener()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GestureWakeup"

    const-string/jumbo v2, "finish mWakeLock is not null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/accessibility/GestureWakeup;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v1, "GestureWakeup"

    const-string/jumbo v2, "finish"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/accessibility/GestureWakeup;
    .locals 2

    const-class v1, Lcom/android/server/accessibility/GestureWakeup;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/accessibility/GestureWakeup;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/GestureWakeup;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    :cond_0
    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleTimeout(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "GestureWakeup"

    const-string/jumbo v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Lcom/android/server/accessibility/GestureWakeup;->mWakelockSequence:I

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static isSupportCover()Z
    .locals 4

    sget-object v2, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.cover.flip"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sget-object v2, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.cover.sview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private launchGestureWakeup()V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v4, "GestureWakeup"

    const-string/jumbo v5, "launchGestureWakeup()+"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v7, :cond_1

    :cond_0
    const-string/jumbo v4, "GestureWakeup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CALL_STATE_OFFHOOK or CALL_STATE_RINGING : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/accessibility/GestureWakeup;->isSupportCover()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "GestureWakeup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "..bCoverOpen.. = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    sget-object v4, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string/jumbo v5, "GestureWakeup"

    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/accessibility/GestureWakeup;->mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/accessibility/GestureWakeup;->mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_5

    :try_start_1
    sget-object v4, Lcom/android/server/accessibility/GestureWakeup;->mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string/jumbo v4, "GestureWakeup"

    const-string/jumbo v5, "mGestureWakeupLock.acquire()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/GestureWakeup;->pokeWakelock()V

    sget-object v4, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.samsung.android.app.airwakeupview"

    const-string/jumbo v6, "ACC3"

    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/GestureWakeup;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/accessibility/GestureWakeup;->mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_6

    :try_start_2
    sget-object v4, Lcom/android/server/accessibility/GestureWakeup;->mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_2
    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private pokeWakelock()V
    .locals 1

    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/GestureWakeup;->pokeWakelock(I)V

    return-void
.end method

.method private pokeWakelock(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "GestureWakeup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[c] pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mWakeLockHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget v1, Lcom/android/server/accessibility/GestureWakeup;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/accessibility/GestureWakeup;->mWakelockSequence:I

    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mWakeLockHandler:Landroid/os/Handler;

    sget v2, Lcom/android/server/accessibility/GestureWakeup;->mWakelockSequence:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/GestureWakeup;->mWakeLockHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private registerApproachListener()Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    sget-object v2, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "GestureWakeup"

    const-string/jumbo v3, "registerApproachListener, mSContextManager is null, create again "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "scontext"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_0
    new-instance v1, Landroid/hardware/scontext/SContextApproachAttribute;

    invoke-direct {v1, v0}, Landroid/hardware/scontext/SContextApproachAttribute;-><init>(I)V

    const-string/jumbo v2, "GestureWakeup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerApproachListener, CurrentUser : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/server/accessibility/GestureWakeup;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v2, v3, v5, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    return v5

    :cond_1
    const-string/jumbo v2, "GestureWakeup"

    const-string/jumbo v3, "GestureWakeup: registerApproachListener fail"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public StartGestureWakeup()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "GestureWakeup"

    const-string/jumbo v1, "StartGestureWakeup()+"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    const-string/jumbo v1, "AirWakeupService"

    const v2, 0x1000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/GestureWakeup;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    sget-object v1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const-string/jumbo v0, "GestureWakeup"

    const-string/jumbo v1, "StartGestureWakeup() create mCoverManager instance"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/GestureWakeup;->registerApproachListener()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "GestureWakeup"

    const-string/jumbo v1, "StartGestureWakeup() Can\'t use proximity sensor in sensor hub"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "air_motion_wake_up"

    const/4 v2, -0x2

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v0, "GestureWakeup"

    const-string/jumbo v1, "GestureWakeup start success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public StopGestureWakeup()Z
    .locals 2

    const-string/jumbo v0, "GestureWakeup"

    const-string/jumbo v1, "StopGestureWakeup()+"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    iget-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/GestureWakeup;->finishGestureWakeup()V

    const-string/jumbo v0, "GestureWakeup"

    const-string/jumbo v1, "GestureWakeup stop success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "GestureWakeup"

    const-string/jumbo v1, "GestureWakeup is aleady stopped"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public checkSettingCondition(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "air_motion_wake_up"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    const-string/jumbo v0, "GestureWakeup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkSettingCondition() mIsSettingGestureWakeUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " User mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
