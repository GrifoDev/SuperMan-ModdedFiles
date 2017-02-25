.class public Lcom/android/server/policy/MultitapKeyManager;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Lcom/android/server/policy/MultitapKeyPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MultitapKeyManager$1;,
        Lcom/android/server/policy/MultitapKeyManager$2;,
        Lcom/android/server/policy/MultitapKeyManager$3;,
        Lcom/android/server/policy/MultitapKeyManager$4;
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

.field private mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mPowerTripleEventTime:J

.field private mPowerTripleTapPending:Z

.field private mPowerTripleTapReady:Z

.field private mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

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

.method static synthetic -get4(Lcom/android/server/policy/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapPending:Z

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

.method static synthetic -set4(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapPending:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapPending:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapReady:Z

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

    new-instance v0, Lcom/android/server/policy/MultitapKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MultitapKeyManager$3;-><init>(Lcom/android/server/policy/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/MultitapKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MultitapKeyManager$4;-><init>(Lcom/android/server/policy/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private handleDoubleTapOnPower()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerConsumed:Z

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    return-void
.end method

.method private handleTripleTapOnHome()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "handleTripleTapOnHome()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->toggleEasyOneHand()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_0
.end method

.method private handleTripleTapOnPower()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerConsumed:Z

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    return-void
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
    .locals 12

    const-wide/16 v8, 0xaa

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    return v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz p2, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mLaunchHome:Z

    if-nez v0, :cond_a

    iput-wide v10, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    iput-wide v10, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v3, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "MultitapKeyManager"

    const-string/jumbo v4, "Home tripletap timeout runnable posted!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5

    :cond_5
    move v3, v5

    goto :goto_2

    :cond_6
    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    return v5

    :cond_7
    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_8
    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v3, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "MultitapKeyManager"

    const-string/jumbo v4, "Home doubletap timeout runnable posted!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v5

    :cond_a
    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_c

    sget-boolean v3, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "MultitapKeyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Home doubletap wakeup time="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " first="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iput-wide v10, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {p0}, Lcom/android/server/policy/MultitapKeyManager;->handleDoubleTapOnHome()V

    return v5

    :cond_c
    if-eqz p2, :cond_e

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const-wide/16 v8, 0x154

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    sget-boolean v3, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_d

    const-string/jumbo v3, "MultitapKeyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Home doubletap first event time="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v5

    :cond_e
    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x28

    cmp-long v3, v6, v8

    if-gtz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    iput-boolean v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    :goto_3
    return v5

    :cond_10
    const-string/jumbo v3, "MultitapKeyManager"

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

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    goto/16 :goto_1

    :cond_11
    iput-boolean v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    invoke-virtual {p0}, Lcom/android/server/policy/MultitapKeyManager;->handleDoubleTapOnHome()V

    goto :goto_3

    :cond_12
    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v3, :cond_13

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/policy/MultitapKeyManager;->handleTripleTapOnHome()V

    return v5

    :cond_13
    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    goto/16 :goto_1

    :sswitch_1
    if-nez v0, :cond_17

    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerConsumed:Z

    if-eqz v3, :cond_14

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerConsumed:Z

    return v5

    :cond_14
    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    iput-boolean v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapPending:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleEventTime:J

    sget-boolean v3, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_15

    const-string/jumbo v3, "MultitapKeyManager"

    const-string/jumbo v6, "Power tripletap timeout posted!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapPending:Z

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v3, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_16

    const-string/jumbo v3, "MultitapKeyManager"

    const-string/jumbo v4, "Power doubletap timeout runnable posted!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return v5

    :cond_17
    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerConsumed:Z

    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapPending:Z

    if-eqz v3, :cond_18

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapPending:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleEventTime:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_1a

    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapReady:Z

    if-eqz v3, :cond_19

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapReady:Z

    invoke-direct {p0}, Lcom/android/server/policy/MultitapKeyManager;->handleTripleTapOnPower()V

    :cond_18
    :goto_4
    iget-boolean v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapPending:Z

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapPending:Z

    iget-object v3, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/policy/MultitapKeyManager;->handleDoubleTapOnPower()V

    return v5

    :cond_19
    iput-boolean v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_4

    :cond_1a
    const-string/jumbo v3, "MultitapKeyManager"

    const-string/jumbo v6, "mPowerTripleTap is timeout"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public handleDoubleTapOnHome()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendHomeDoubleClickBR()V

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "Home doubletap block in ProKiosk mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "Home doubletap block in access control"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCurrentUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "Home doubletap block in UserSetup not complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "MultitapKeyManager"

    const-string/jumbo v1, "Home doubletap block in CarrierLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchDoubleTapOnHomeCommand()V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;)V
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
