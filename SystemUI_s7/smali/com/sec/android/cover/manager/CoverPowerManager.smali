.class public Lcom/sec/android/cover/manager/CoverPowerManager;
.super Ljava/lang/Object;
.source "CoverPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverPowerManager$1;,
        Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/cover/manager/CoverPowerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTimerResetBlocked:Z

.field private mPMS:Landroid/os/PowerManager;

.field private mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mUnblockTimerResetHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -set0(Lcom/sec/android/cover/manager/CoverPowerManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    return p1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    new-instance v0, Lcom/sec/android/cover/manager/CoverPowerManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager$1;-><init>(Lcom/sec/android/cover/manager/CoverPowerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "create CoverPowerManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    const-string/jumbo v1, "SViewCoverBaseService.mCoverStateWakeLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverPowerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method


# virtual methods
.method public cancelScreenOffTimer()V
    .locals 0

    return-void
.end method

.method public goToSleep()V
    .locals 4

    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "goToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public releaseWakeLock()V
    .locals 2

    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public resetScreenOffTimer()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    return-void
.end method

.method public resetScreenOffTimerWithInterval()V
    .locals 4

    const/16 v1, 0x65

    iget-boolean v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    return-void
.end method

.method public setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V
    .locals 2

    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "setTimerExpireHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    :cond_0
    return-void
.end method

.method public startScreenOffTimer()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    return-void
.end method

.method public userActivity()V
    .locals 4

    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "userActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    return-void
.end method

.method public wakeUp()V
    .locals 4

    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "wakeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_0
    return-void
.end method

.method public wakeUpWithReason()V
    .locals 4

    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "wakeUpWithReason"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_0
    return-void
.end method
