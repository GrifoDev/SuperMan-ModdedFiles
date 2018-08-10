.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"

# interfaces
.implements Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$1;,
        Lcom/android/systemui/power/PowerUI$2;,
        Lcom/android/systemui/power/PowerUI$3;,
        Lcom/android/systemui/power/PowerUI$4;,
        Lcom/android/systemui/power/PowerUI$5;,
        Lcom/android/systemui/power/PowerUI$6;,
        Lcom/android/systemui/power/PowerUI$7;,
        Lcom/android/systemui/power/PowerUI$Receiver;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBatteryChargingType:I

.field private mBatteryHealth:I

.field private mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryHighVoltageCharger:Z

.field private mBatteryLevel:I

.field private mBatteryOnline:I

.field private mBatteryOverheatLevel:I

.field private mBatterySlowCharger:Z

.field private mBatteryStatus:I

.field private mBatteryWaterConnector:Z

.field private mBootCompleted:Z

.field private mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

.field private mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mChargerAnimationWindowManager:Landroid/view/WindowManager;

.field private mCurrentOrientation:I

.field private mDensity:I

.field private mDismissBatteryHealthInterruptionWarning:Z

.field private mDisplay:Landroid/view/Display;

.field private mFontScale:F

.field private mFullyConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

.field private mInvalidCharger:I

.field private mIsChargerAnimationPlaying:Z

.field private mIsDayDreamConnected:Z

.field private mIsDeviceMoving:Z

.field private mIsHiccupState:Z

.field private mIsPowerSupplyingActivated:Z

.field private mIsRunningLowBatteryTask:Z

.field private mIsRunningOverheatWarningTask:Z

.field private mIsSContextEnabled:Z

.field private mIsSContextListenerRigstered:Z

.field private mIsScreenOn:Z

.field private mIsShutdownTaskDelayed:Z

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field mLowBatteryWarningTask:Ljava/lang/Runnable;

.field private mNextLogTime:J

.field private mNumTemps:I

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field mOverheatWarningTask:Ljava/lang/Runnable;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingRecommendNotiTrigger:I

.field private final mPowersavingNotiTriggerObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field private mRecentTemps:[F

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSIOPLevel:I

.field private mScreenOffTime:J

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThresholdTemp:F

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDayDreamConnected:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/systemui/power/PowerUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic -get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDayDreamConnected:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    return p1
.end method

.method static synthetic -set21(Lcom/android/systemui/power/PowerUI;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/PowerUI;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkBatteryHealthInterruptionStatus(II)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryNotificationLanguage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/power/PowerUI;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkConnectedChargerStatus(ZI)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkCoolDownStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkFullBatteryStatus(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkIncompatibleChargerConnection(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/power/PowerUI;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkPowerSavingRecommendStatus(II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/power/PowerUI;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->playChargerConnectionAnimation(ZI)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/power/PowerUI;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->playChargerConnectionSound(ZII)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/power/PowerUI;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->sendLowBatteryDumpIfNeeded(III)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const/16 v0, 0x7d

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsDayDreamConnected:Z

    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatWarningTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/systemui/power/PowerUI$5;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingNotiTriggerObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    new-instance v0, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method private checkBatteryHealthInterruptionStatus(II)V
    .locals 12

    const/4 v9, 0x0

    const-wide/32 v10, 0xea60

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v8, v4, :cond_5

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v7, v4, :cond_0

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v5, 0x7

    if-ne v5, v4, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    if-nez v2, :cond_6

    const-string/jumbo v4, "PowerUI"

    const-string/jumbo v5, "onReceive : fail to get PowerManager reference"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatteryHealthInterruptionWarning()V

    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    :cond_2
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq p2, v4, :cond_11

    const/4 v4, 0x5

    if-eq v4, p2, :cond_3

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v5, 0x5

    if-ne v5, v4, :cond_10

    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/SettingsManager;->getScreenWakeupOnPowerState()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    const-string/jumbo v4, "PowerUI"

    const-string/jumbo v5, "Knox Customization: shouldWakeUp: not waking when battery health is changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v5, 0x6

    if-eq v5, v4, :cond_0

    :cond_5
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v8, v4, :cond_d

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/16 v5, 0x8

    if-ne v5, v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    if-nez v2, :cond_9

    const-string/jumbo v4, "PowerUI"

    const-string/jumbo v5, "onReceive : fail to get PowerManager reference"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "PowerUI"

    const v5, 0x10000006

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-boolean v4, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_1

    :cond_8
    const/16 v4, 0x8

    if-ne v4, p2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "PowerUI"

    const v5, 0x10000006

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-boolean v4, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_2

    :cond_b
    if-ne v7, p2, :cond_1

    sget-boolean v4, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v8, v4, :cond_f

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v7, v4, :cond_f

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v4, :cond_f

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    :goto_3
    sget-boolean v4, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_e
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    :cond_f
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatteryHealthInterruptionWarning()V

    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    goto :goto_3

    :cond_10
    const/16 v4, 0x9

    if-eq v4, p2, :cond_3

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/16 v5, 0x9

    if-eq v5, v4, :cond_3

    :cond_11
    :goto_4
    return-void

    :cond_12
    const-string/jumbo v4, "PowerUI"

    const-string/jumbo v5, "Overvoltage/Undervoltage status is changed so turn on the screen."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-nez v1, :cond_13

    const-string/jumbo v4, "PowerUI"

    const-string/jumbo v5, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "BatteryStateChanged"

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v4, v5, v6, v7}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "turnOnScreen : Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private checkConnectedChargerStatus(ZI)V
    .locals 7

    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v2, v0, :cond_d

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v5, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v2, v0, :cond_7

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_USB_TYPE_C:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    :goto_0
    if-ne v4, p2, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    :cond_2
    :goto_2
    if-ne v4, p2, :cond_3

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargerDisconnectNotice()V

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v0, :cond_5

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_SLOW_CHARGING_NOTICE:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_0

    :cond_6
    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v4, v0, :cond_c

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    const/16 v1, 0x64

    if-ne v1, v0, :cond_b

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    :goto_3
    if-eq v5, p2, :cond_8

    if-ne v2, p2, :cond_9

    :cond_8
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eq v0, v6, :cond_a

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-ne v0, v4, :cond_1

    :cond_a
    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Register SContextListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    goto :goto_1

    :cond_b
    iput v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    :cond_d
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-nez v0, :cond_e

    const/4 v0, -0x1

    if-ne v0, p2, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-eqz v0, :cond_2

    if-ne v4, p2, :cond_2

    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Unregister SContextListener - From Check charging type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    goto/16 :goto_2
.end method

.method private checkCoolDownStatus(Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x2

    sget-boolean v1, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    const-string/jumbo v1, "battery_overheat_level"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    const-string/jumbo v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Battery overheat Level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-interface {v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatWarning()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-le v4, v1, :cond_0

    if-gt v4, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWillOverheatShutdownWarning()V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v1, "PowerUI"

    const-string/jumbo v2, "Battery overheat level recovered from shutdown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-interface {v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    goto :goto_1
.end method

.method private checkFullBatteryStatus(I)V
    .locals 2

    const/4 v1, 0x5

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    goto :goto_0
.end method

.method private checkIncompatibleChargerConnection(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerNotice()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerNotice()V

    goto :goto_0
.end method

.method private checkPowerSavingRecommendStatus(II)V
    .locals 2

    const/4 v1, 0x2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq v1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p2, v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSavingRecommendNotice(I)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    const/16 v1, 0x28

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSavingRecommendNotice(I)V

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSavingRecommendNotice(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p2, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissPowerSavingRecommendNotice()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    if-le p1, v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    rsub-int/lit8 v2, v1, -0x1

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initTemperatureWarning()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v3, "show_temperature_warning"

    const v4, 0x7f0b000e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "warning_temperature"

    const v4, 0x7f0b0012

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    aget v3, v2, v6

    const v4, -0x800001

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    aget v3, v2, v6

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    return-void
.end method

.method private logAtTemperatureThreshold(F)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "currentTemp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",thresholdTemp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",batteryStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",recentTemps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "PowerUI"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logTemperatureStats()V
    .locals 11

    const/4 v10, 0x0

    iget-wide v6, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_0

    return-void

    :cond_0
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v4, v6, v10

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v3, v6, v10

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v6, v10

    const/4 v1, 0x1

    :goto_0
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v5, v6, v1

    add-float/2addr v4, v5

    cmpl-float v6, v5, v2

    if-lez v6, :cond_1

    move v2, v5

    :cond_1
    cmpg-float v6, v5, v3

    if-gez v6, :cond_2

    move v3, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    int-to-float v6, v6

    div-float v0, v4, v6

    const-string/jumbo v6, "PowerUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "avg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",min="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",max="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_skin_temp_avg"

    float-to-int v8, v0

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_skin_temp_min"

    float-to-int v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_skin_temp_max"

    float-to-int v8, v2

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    iput v10, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    return-void
.end method

.method private playChargerConnectionAnimation(ZI)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eq p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDayDreamConnected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_2

    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Wireless charger connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->setChargerAnimationView(I)V

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-eq v2, p2, :cond_1

    const/4 v0, 0x2

    if-eq v0, p2, :cond_1

    :cond_3
    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Cable charger connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerUI;->setChargerAnimationView(I)V

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    goto :goto_0
.end method

.method private playChargerConnectionSound(ZII)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x4

    const-string/jumbo v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "priorPlugType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPlugType =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, v0, :cond_3

    const/4 v0, -0x1

    if-eq v0, p2, :cond_3

    :goto_0
    if-eqz p2, :cond_0

    if-ne p2, v3, :cond_4

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v0, v3, :cond_4

    :cond_0
    :goto_1
    if-eq v3, p3, :cond_7

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v0, :cond_7

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v1, 0x7

    if-ne v1, v0, :cond_6

    :cond_1
    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "battery health interruption so don\'t play charger connection sound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_4
    if-eq p2, v3, :cond_5

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v0, v3, :cond_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v1, 0x6

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    :cond_7
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "charging_sounds_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v3, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    if-nez v0, :cond_8

    if-eqz p2, :cond_2

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->playPowerSound(I)V

    goto :goto_2
.end method

.method private sendLowBatteryDumpIfNeeded(III)V
    .locals 5

    const/16 v4, 0xa

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "LOW_BATTERY_DUMP"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int v1, p1, v1

    if-ge v1, v4, :cond_0

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int/2addr v1, p1

    if-lt v1, v4, :cond_2

    :cond_0
    const/4 v1, -0x1

    if-eq v1, p1, :cond_2

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PowerUI"

    const-string/jumbo v2, "Low battery dump"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    if-ge p3, p2, :cond_1

    const/4 v1, -0x2

    if-ne v1, p3, :cond_1

    goto :goto_0
.end method

.method private setChargerAnimationView(I)V
    .locals 7

    const/4 v1, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e5

    const v4, 0x1000118

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0023

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setWindowDisplay(Landroid/view/Display;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/power/ChargerAnimationView;->startChargerAnimation(IIZ)V

    return-void
.end method

.method private setNextLogTime()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    return-void
.end method

.method private showThermalShutdownDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastShutdownReason()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showThermalShutdownWarning()V

    :cond_0
    return-void
.end method

.method private updateBatteryNotificationLanguage()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->reCreatePowerUINotificationChannel()V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Language is changed so notify LowBatteryNotification again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_FULL_BATTERY_CHECK:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Language is changed so notify FullBatteryNotification again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Language is changed so notify ChargingNotification again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerNotice()V

    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Language is changed so notify incompatible charger again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerNotice()V

    :cond_3
    return-void
.end method

.method private updateTemperatureWarning()V
    .locals 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v2

    array-length v3, v2

    if-eqz v3, :cond_0

    aget v1, v2, v5

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    aput v1, v3, v4

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInVrMode()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerUI;->logAtTemperatureThreshold(F)V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHighTemperatureWarning()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->logTemperatureStats()V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/power/-$Lambda$rOQQRcS4IrQ-aVKdM_fEvP6v_JI;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/-$Lambda$rOQQRcS4IrQ-aVKdM_fEvP6v_JI;-><init>(Ljava/lang/Object;)V

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHighTemperatureWarning()V

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_power_PowerUI-mthref-0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string/jumbo v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mThresholdTemp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextLogTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onChargerAnimationEnd()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->stopPowerSound(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mDensity:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mFontScale:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->onDensityOrFontScaleChanged()V

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mDensity:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mFontScale:F

    :cond_1
    sget-boolean v3, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_2

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    if-eq v3, v2, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v3}, Lcom/android/systemui/power/ChargerAnimationView;->stopChargerAnimation()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "hardware_properties"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/HardwarePropertiesManager;

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, -0x1

    :goto_0
    iput-wide v4, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    new-instance v6, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    const-class v5, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v5}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {v6, v7, v4, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v6, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    new-instance v1, Lcom/android/systemui/power/PowerUI$8;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power_trigger_level"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v8, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v4}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showThermalShutdownDialog()V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initTemperatureWarning()V

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mFontScale:F

    iget v4, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mDensity:I

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "power_mode_noti_trigger_level"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingNotiTriggerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "power_mode_noti_trigger_level"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    if-nez v2, :cond_2

    const-string/jumbo v4, "PowerUI"

    const-string/jumbo v5, "start : fail to get PowerManager reference"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.sec.feature.sensorhub"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PowerUI"

    const-string/jumbo v5, "start : hasSystemFeature(com.sec.feature.sensorhub)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "scontext"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/SContextManager;

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    const-string/jumbo v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start : (mSContextManager != null - mIsSContextEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v4, "PowerUI"

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1
.end method

.method updateBatteryWarningLevels()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string/jumbo v4, "low_power_trigger_level"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    move v3, v1

    if-ge v1, v0, :cond_0

    move v3, v0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v3, v4, v6

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v5, 0x1

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0075

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return-void
.end method
