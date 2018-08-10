.class public Lcom/android/server/policy/MultitapKeyManager;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Lcom/android/server/policy/IMultitapKeyManagerBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MultitapKeyManager$1;,
        Lcom/android/server/policy/MultitapKeyManager$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final SEC_DOUBLE_TAP_TIMEOUT:I = 0xaa

.field private static final TAG:Ljava/lang/String; = "MultitapKeyManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleEventTime:J

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeFakeTripleTapPending:Z

.field private mHomeKeyLastEventTime:J

.field private mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mLaunchHome:Z

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerConsumed:Z

.field private mPowerDoubleTapPending:Z

.field private mPowerTripleEventTime:J

.field private mPowerTripleTapPending:Z

.field private mPowerTripleTapReady:Z

.field mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mLaunchHome:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mLaunchHome:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapPending:Z

    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapPending:Z

    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapReady:Z

    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerConsumed:Z

    iput-wide v2, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleEventTime:J

    iput-wide v2, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    iput-wide v2, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mLaunchHome:Z

    new-instance v0, Lcom/android/server/policy/MultitapKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MultitapKeyManager$1;-><init>(Lcom/android/server/policy/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/MultitapKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MultitapKeyManager$2;-><init>(Lcom/android/server/policy/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private handleTripleTapOnHome()V
    .locals 5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    const-string/jumbo v1, "MultitapKeyManager"

    const-string/jumbo v2, "handleTripleTapOnHome()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->toggleEasyOneHand()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getSBikeModeState()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MultitapKeyManager"

    const-string/jumbo v2, "Triple tap blocked in bike mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "S bike mode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x1040077

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->showToast(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/MultitapKeyManager;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    const/4 v4, 0x0

    return v4

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    if-nez v1, :cond_9

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v4, v2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mLaunchHome:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xaa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "MultitapKeyManager"

    const-string/jumbo v5, "Home tripletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v4, 0x1

    return v4

    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_7
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xaa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "MultitapKeyManager"

    const-string/jumbo v5, "Home doubletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v4, 0x1

    return v4

    :cond_9
    if-nez v3, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event.getEventTime() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_c

    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_b

    const-string/jumbo v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Home doubletap wakeup time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " first="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {p0, v2}, Lcom/android/server/policy/MultitapKeyManager;->handleDoubleTapLaunch(I)V

    const/4 v4, 0x1

    return v4

    :cond_c
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    if-nez p2, :cond_d

    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    if-nez v4, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    :cond_d
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x154

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Home doubletap first event time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v4, 0x1

    return v4

    :cond_f
    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    if-eqz v4, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x28

    cmp-long v4, v4, v6

    if-gtz v4, :cond_10

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_10

    const-string/jumbo v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Home doubletap drop for time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    goto/16 :goto_1

    :cond_10
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    :goto_3
    const/4 v4, 0x1

    return v4

    :cond_11
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    invoke-virtual {p0, v2}, Lcom/android/server/policy/MultitapKeyManager;->handleDoubleTapLaunch(I)V

    goto :goto_3

    :cond_12
    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/policy/MultitapKeyManager;->handleTripleTapOnHome()V

    const/4 v4, 0x1

    return v4

    :cond_13
    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public handleDoubleTapLaunch(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendDoubleClickBR(I)V

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "doubletap was blocked by lgu carrier status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isDomesticOtaStart()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "doubletap was blocked by OTA status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "doubletap block in access control"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCurrentUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "doubletap block in UserSetup not complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "doubletap block in SimLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "doubletap block in CarrierLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverStateSwitch()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "cover state is close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "doubletap block due to SystemKeyRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isSharedDeviceKeyguardOn()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "doubletap block due to shared device keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchDoubleTapCommand(I)V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/IPhoneWindowManagerBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    check-cast p2, Lcom/android/server/policy/SamsungPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    return-void
.end method

.method public isHomeConsumed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
