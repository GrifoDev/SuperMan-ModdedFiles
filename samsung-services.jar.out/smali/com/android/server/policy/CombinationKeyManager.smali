.class public Lcom/android/server/policy/CombinationKeyManager;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/CombinationKeyManager$10;,
        Lcom/android/server/policy/CombinationKeyManager$11;,
        Lcom/android/server/policy/CombinationKeyManager$1;,
        Lcom/android/server/policy/CombinationKeyManager$2;,
        Lcom/android/server/policy/CombinationKeyManager$3;,
        Lcom/android/server/policy/CombinationKeyManager$4;,
        Lcom/android/server/policy/CombinationKeyManager$5;,
        Lcom/android/server/policy/CombinationKeyManager$6;,
        Lcom/android/server/policy/CombinationKeyManager$7;,
        Lcom/android/server/policy/CombinationKeyManager$8;,
        Lcom/android/server/policy/CombinationKeyManager$9;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final QUICKSHOT_CHORD_DEBOUNDCE_DELAY_MLLIS:J = 0x15eL

.field private static final QUICKSHOT_CHORD_KEY_INTERVEAL_TIME_MILLIS:J = 0x96L

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field private static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SYSDUMP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "CombinationKeyManager"


# instance fields
.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field private final mAccessShortcutLongPress:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyTime:J

.field private mBackKeyTriggered:Z

.field private mCameraKeyConsumed:Z

.field private mCameraKeyTime:J

.field private mCameraKeyTriggered:Z

.field private mCameraRecordKeyConsumed:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field private mCombinationShortPressed:Z

.field mContext:Landroid/content/Context;

.field private final mDirectAccessChordLongPress:Ljava/lang/Runnable;

.field private mEnterKeyConsumed:Z

.field private mEnterKeyTime:J

.field private mEnterKeyTriggered:Z

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field private mFlashKeyConsumed:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mHandler:Landroid/os/Handler;

.field private mHasPermanentMenuKey:Z

.field private mHomeKeyConsumed:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field private mMenuConsumed:Z

.field private mMenuTime:J

.field private mMenuTriggered:Z

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerKeyConsumed:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field private mRecentKeyConsumed:Z

.field private mRecentKeyTime:J

.field private mRecentKeyTriggered:Z

.field private final mResetHomeKeyTriggered:Ljava/lang/Runnable;

.field private final mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

.field private final mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

.field mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field private final mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

.field private final mSysDumpLongPress:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumed:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumed:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWiFiProtectedSetupKeyConsumed:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/CombinationKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/CombinationKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/CombinationKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/CombinationKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mCombinationShortPressed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/CombinationKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/CombinationKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/CombinationKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/CombinationKeyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$1;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mDirectAccessChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$2;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$3;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$4;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$5;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessShortcutLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$6;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$7;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$8;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$9;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetHomeKeyTriggered:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$10;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$11;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private cancelPendingChordAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mDirectAccessChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessShortcutLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method private checkTriggerDirectAccess()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mCombinationShortPressed:Z

    if-eqz v5, :cond_2

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mCombinationShortPressed:Z

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v5

    invoke-static {v5}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "CombinationKeyManager"

    const-string/jumbo v6, "block to trigger accessiblity when Verizon Setup Wizard Running"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getSBikeModeState()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v7, "S bike mode"

    aput-object v7, v6, v8

    const v7, 0x1040077

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->showToast(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/16 v6, 0x17

    invoke-virtual {v5, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setAppOpsPermissionIfNeeded(I)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.action.DIRECT_ACCESS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v7, "com.samsung.permission.DIRECT_ACCESS"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo v5, "CombinationKeyManager"

    const-string/jumbo v6, "direct access mesage : broadcast"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "setupwizard_bixby_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040141

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/android/server/policy/CombinationKeyManager$12;

    invoke-direct {v5, p0, v3}, Lcom/android/server/policy/CombinationKeyManager$12;-><init>(Lcom/android/server/policy/CombinationKeyManager;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const-string/jumbo v5, "CombinationKeyManager"

    const-string/jumbo v6, "block to trigger talkbackMode when BSUW is enable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_0
.end method

.method private getChordLongPressDelay()J
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptAccessControlChord()V
    .locals 8

    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptAccessShortcut()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/server/policy/AccessibilityShortcutController;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CombinationKeyManager"

    const-string/jumbo v1, "Accessibility Shortcut unAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string/jumbo v0, "CombinationKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptAccessShortcut - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessShortcutLongPress:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private interceptFactoryTestChord()V
    .locals 8

    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private interceptForAccessibility()V
    .locals 8

    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCombinationShortPressed:Z

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mDirectAccessChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private interceptQuickShotChord()V
    .locals 10

    const-wide/16 v8, 0x15e

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :cond_1
    sget-boolean v2, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptQuickShotChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptQuickShotChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptScreenshotChord()V
    .locals 10

    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v2, ""

    const-string/jumbo v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptStopLockTaskModeChord()V
    .locals 10

    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mMenuKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private interceptSysDumpChord()V
    .locals 8

    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBackKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRecentKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMenuKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasPermanentMenuKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHasPermanentMenuKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x96

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_0

    return-wide v6

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/server/policy/AccessibilityShortcutController;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDirectAccessEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_8
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_9
    return-wide v6
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 12

    const-wide/16 v10, 0x1388

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v4, 0x20000000

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "CombinationKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptKeyCombinationBeforeQueueing keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_2
    return-void

    :sswitch_0
    if-eqz v1, :cond_6

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessControlChord()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessShortcut()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto :goto_2

    :sswitch_1
    if-eqz v1, :cond_8

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptForAccessibility()V

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessShortcut()V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->checkTriggerDirectAccess()V

    goto :goto_2

    :sswitch_2
    if-eqz v1, :cond_a

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessControlChord()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptFactoryTestChord()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptForAccessibility()V

    const-string/jumbo v4, ""

    const-string/jumbo v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    :cond_a
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->checkTriggerDirectAccess()V

    goto/16 :goto_2

    :sswitch_3
    if-eqz v1, :cond_c

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetHomeKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetHomeKeyTriggered:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessControlChord()V

    goto/16 :goto_2

    :cond_c
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetHomeKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_4
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-boolean v4, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "CombinationKeyManager"

    const-string/jumbo v5, "Camera key is blocked by policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    if-eqz v1, :cond_f

    if-nez v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyConsumed:Z

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    :cond_f
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_5
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_10

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyConsumed:Z

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    goto/16 :goto_2

    :cond_10
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_6
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_11

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessControlChord()V

    goto/16 :goto_2

    :cond_11
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_7
    if-eqz v1, :cond_12

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptFactoryTestChord()V

    goto/16 :goto_2

    :cond_12
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_8
    if-eqz v1, :cond_13

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    :cond_13
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v4, :cond_4

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_9
    if-eqz v1, :cond_14

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    :cond_14
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v4, :cond_4

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v4, ""

    const-string/jumbo v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v1, :cond_15

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    :cond_15
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :cond_16
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_17

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    :cond_17
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v4, :cond_4

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v4, ""

    const-string/jumbo v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_18

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTime:J

    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyConsumed:Z

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    :cond_18
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_8
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x1b -> :sswitch_4
        0x42 -> :sswitch_b
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_0
        0xbb -> :sswitch_9
        0x3fe -> :sswitch_6
        0x404 -> :sswitch_5
        0x412 -> :sswitch_7
    .end sparse-switch
.end method

.method public isCombinationKeyTriggered()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    const-string/jumbo v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "CombinationKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CombinationKeyTriggered HomeTrigger ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mVolumeDownKeyTriggered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mVolumeUpKeyTriggered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    return v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sparse-switch v1, :sswitch_data_0

    :cond_2
    return v4

    :sswitch_0
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    :cond_3
    return v5

    :sswitch_1
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    :cond_4
    return v5

    :sswitch_2
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_5

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    :cond_5
    return v5

    :sswitch_3
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_6

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    :cond_6
    return v5

    :sswitch_4
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_7

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyConsumed:Z

    :cond_7
    return v5

    :sswitch_5
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_8

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyConsumed:Z

    :cond_8
    return v5

    :sswitch_6
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_9

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    :cond_9
    return v5

    :sswitch_7
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_a

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    :cond_a
    return v5

    :sswitch_8
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_b

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    :cond_b
    return v5

    :sswitch_9
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_c

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    :cond_c
    return v5

    :sswitch_a
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_d

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    :cond_d
    return v5

    :sswitch_b
    const-string/jumbo v2, ""

    const-string/jumbo v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyConsumed:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_e

    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyConsumed:Z

    :cond_e
    return v5

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_8
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x1b -> :sswitch_4
        0x42 -> :sswitch_b
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_0
        0xbb -> :sswitch_9
        0x3fe -> :sswitch_6
        0x404 -> :sswitch_5
        0x412 -> :sswitch_7
    .end sparse-switch
.end method

.method public onSystemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHasPermanentMenuKey:Z

    return-void
.end method
