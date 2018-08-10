.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$1;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$2;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$3;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$4;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
    }
.end annotation


# instance fields
.field private mAffordancePivotY:I

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryIsLow:Z

.field private mBatteryLevel:I

.field private mBounceAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

.field private mChargingSpeed:I

.field private mChargingType:I

.field private mChargingWattage:I

.field private final mContext:Landroid/content/Context;

.field private mCountdownIndication:Ljava/lang/String;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mDozing:Z

.field private mErrorColor:I

.field private final mFastThreshold:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIndicationArea:Landroid/view/ViewGroup;

.field private mIsChargeEnabled:Z

.field private mIsEmergencyMode:Z

.field private mIsMobileKeyboardCovered:I

.field private mIsPowerSavingMode:Z

.field private mIsScreenTurnedOnToShowMessage:Z

.field private mIsSinglePageLockscreen:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mOriginalLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mOriginalLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestingIndication:Ljava/lang/String;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mSineOut33:Landroid/view/animation/PathInterpolator;

.field private final mSlowThreshold:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mTickReceiver:Landroid/content/BroadcastReceiver;

.field private mTransientIndication:Ljava/lang/String;

.field private mTransientTextColor:I

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisible:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/BounceInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mErrorColor:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsScreenTurnedOnToShowMessage:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryIsLow:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsScreenTurnedOnToShowMessage:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsSinglePageLockscreen:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsChargeEnabled:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsEmergencyMode:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPowerSavingMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningBiometricCountdownState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningCountdownState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowEmptyMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowingDelayedHelpText()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const v5, 0x3e2e147b    # 0.17f

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    const-string/jumbo v0, "Doze:KeyguardIndication"

    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOriginalLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAffordancePivotY:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOriginalLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 7

    const/4 v5, 0x0

    const v3, 0x3e2e147b    # 0.17f

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    const v0, 0x7f0a027f

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v0, 0x7f0a027e

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-direct {v0, p4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v0, 0x7f0b0007

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    const v0, 0x7f0b0006

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPowerSavingMode:Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsEmergencyMode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601e9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mErrorColor:I

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    :cond_0
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsSinglePageLockscreen:Z

    return-void
.end method

.method private computeIndication()Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x1388

    const/4 v1, 0x1

    const/4 v0, 0x1

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenHelpTextEnabled()Z

    move-result v1

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowEmptyMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningCountdownState()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    :goto_1
    return-object v2

    :cond_3
    const-string/jumbo v2, ""

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsChargeEnabled:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showGuideTextDelayed(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getChargingText()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_5
    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryIsLow:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showGuideTextDelayed(J)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12061b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    const-string/jumbo v2, ""

    return-object v2

    :cond_7
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    :goto_2
    return-object v2

    :cond_8
    const-string/jumbo v2, ""

    goto :goto_2
.end method

.method private computePowerIndication()Ljava/lang/String;
    .locals 9

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120476

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    if-eqz v5, :cond_4

    const v0, 0x7f120480

    :goto_2
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v6, v0, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v4

    const-string/jumbo v6, "KeyguardIndication"

    const-string/jumbo v7, "Error calling IBatteryStats: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :pswitch_1
    if-eqz v5, :cond_2

    const v0, 0x7f120481

    goto :goto_2

    :cond_2
    const v0, 0x7f120497

    goto :goto_2

    :pswitch_2
    if-eqz v5, :cond_3

    const v0, 0x7f120482

    goto :goto_2

    :cond_3
    const v0, 0x7f120498

    goto :goto_2

    :cond_4
    const v0, 0x7f120496

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChargingText()Ljava/lang/String;
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string/jumbo v0, ""

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120620

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingType:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    sget-boolean v5, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const v8, 0x7f120619

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :pswitch_0
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYGUARD_IS_CHN_DEVICE:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f12061d

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f12061c

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f12061a

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYGUARD_IS_CHN_DEVICE:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f12061f

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f12061e

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f120618

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v5, "KeyguardIndication"

    const-string/jumbo v6, "Error calling IBatteryStats: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultInstruction(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120662

    return v0

    :cond_0
    const v0, 0x7f120661

    return v0
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0xe10

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    const-wide/16 v6, 0xe10

    div-long v6, v4, v6

    long-to-int v1, v6

    mul-int/lit16 v6, v1, 0xe10

    int-to-long v6, v6

    sub-long/2addr v4, v6

    :cond_0
    const-wide/16 v6, 0x3c

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    const-wide/16 v6, 0x3c

    div-long v6, v4, v6

    long-to-int v2, v6

    mul-int/lit8 v6, v2, 0x3c

    int-to-long v6, v6

    sub-long/2addr v4, v6

    :cond_1
    long-to-int v3, v4

    if-nez v1, :cond_2

    const/4 v6, 0x2

    if-lt v2, v6, :cond_2

    const/16 v6, 0x1e

    if-lt v3, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const v8, 0x7f120622

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    if-lez v1, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f120621

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-lez v2, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "el"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f120623

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x10402e7

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f120623

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v6, 0x1

    if-le v3, v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x10402e9

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x10402e8

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPerformingWipeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;JJ)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private isLockIconVisible()Z
    .locals 13

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, v9}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v4

    const-wide/16 v2, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v8

    if-nez v4, :cond_0

    and-int/lit16 v10, v0, 0x100

    const/16 v11, 0x100

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v10

    xor-int/lit8 v5, v10, 0x1

    :goto_0
    if-nez v4, :cond_1

    and-int/lit8 v10, v0, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v7

    :goto_1
    if-nez v4, :cond_2

    and-int/lit16 v10, v0, 0x1000

    const/16 v11, 0x1000

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    :goto_2
    sget-boolean v10, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v10

    if-eqz v10, :cond_3

    return v12

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsSinglePageLockscreen:Z

    if-eqz v10, :cond_4

    return v12

    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    return v12

    :cond_5
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v5, :cond_6

    return v12

    :cond_6
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    return v12

    :cond_7
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v6, :cond_8

    return v12

    :cond_8
    if-eqz v8, :cond_9

    xor-int/lit8 v10, v1, 0x1

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    return v10

    :cond_9
    return v12
.end method

.method private isRunningBiometricCountdownState()Z
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRunningCountdownState()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleAttemptLockout(J)V

    const/4 v2, 0x1

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isShowEmptyMessage()Z
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsSinglePageLockscreen:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isShowingDelayedHelpText()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPowerSavingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsEmergencyMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowingDirectlyBiometricText()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private isShowingDirectlyBiometricText()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    return v5

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v4

    if-nez v4, :cond_2

    return v6

    :cond_2
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_3

    return v6

    :cond_3
    return v5
.end method

.method private registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private showGuideTextDelayed(J)V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private switchIndication(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(ZZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isLockIconVisible()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(ZZ)V

    goto :goto_0
.end method

.method private updateDisclosure()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const v4, 0x7f1202cc

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v2, 0x7f1202cb

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateIndication()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computeIndication()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method private updateIndication(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computeIndication()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private updateLockIconVisibility(ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->showIcon(ZZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpText(I)Ljava/lang/String;
    .locals 20

    const/16 v16, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v6

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    sget-boolean v18, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/android/systemui/Rune;->isFingerprintSensorRear()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/4 v14, 0x1

    :cond_0
    if-nez v6, :cond_9

    and-int/lit8 v18, v3, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v18

    if-eqz v18, :cond_9

    xor-int/lit8 v9, v14, 0x1

    :goto_0
    if-nez v6, :cond_a

    and-int/lit8 v18, v3, 0x10

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v12

    :goto_1
    if-nez v6, :cond_b

    and-int/lit16 v0, v3, 0x100

    move/from16 v18, v0

    const/16 v19, 0x100

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v18

    xor-int/lit8 v7, v18, 0x1

    :goto_2
    if-nez v6, :cond_c

    and-int/lit16 v0, v3, 0x1000

    move/from16 v18, v0

    const/16 v19, 0x1000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v10

    :goto_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v18

    if-eqz v18, :cond_1

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v12

    :goto_4
    move v13, v12

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v18

    if-eqz v18, :cond_2

    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v7

    :goto_5
    move v8, v7

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v10

    :goto_6
    move v11, v10

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "accessibility"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v5

    if-nez v9, :cond_4

    if-nez v12, :cond_4

    if-nez v7, :cond_4

    if-eqz v10, :cond_6a

    :cond_4
    xor-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_6a

    if-eqz v9, :cond_5

    if-nez v12, :cond_7

    :cond_5
    if-eqz v9, :cond_6

    if-nez v7, :cond_7

    :cond_6
    if-eqz v9, :cond_32

    if-eqz v10, :cond_32

    :cond_7
    if-eqz v9, :cond_17

    if-eqz v12, :cond_17

    xor-int/lit8 v18, v13, 0x1

    if-eqz v18, :cond_17

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    if-eqz v5, :cond_11

    if-eqz v15, :cond_10

    const v16, 0x7f120250

    :cond_8
    :goto_7
    if-eqz v16, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    return-object v18

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v10, 0x0

    goto :goto_6

    :cond_10
    const v16, 0x7f12024f

    goto :goto_7

    :cond_11
    if-eqz v15, :cond_12

    const v16, 0x7f120553

    goto :goto_7

    :cond_12
    const v16, 0x7f120552

    goto :goto_7

    :cond_13
    if-eqz v5, :cond_15

    if-eqz v15, :cond_14

    const v16, 0x7f12026a

    goto :goto_7

    :cond_14
    const v16, 0x7f120269

    goto :goto_7

    :cond_15
    if-eqz v15, :cond_16

    const v16, 0x7f120555

    goto :goto_7

    :cond_16
    const v16, 0x7f120554

    goto :goto_7

    :cond_17
    if-eqz v9, :cond_1f

    if-eqz v7, :cond_1f

    xor-int/lit8 v18, v8, 0x1

    if-eqz v18, :cond_1f

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    if-eqz v5, :cond_19

    if-eqz v15, :cond_18

    const v16, 0x7f12024c

    goto :goto_7

    :cond_18
    const v16, 0x7f12024b

    goto :goto_7

    :cond_19
    if-eqz v15, :cond_1a

    const v16, 0x7f1204db

    goto :goto_7

    :cond_1a
    const v16, 0x7f1204da

    goto :goto_7

    :cond_1b
    if-eqz v5, :cond_1d

    if-eqz v15, :cond_1c

    const v16, 0x7f120266

    goto :goto_7

    :cond_1c
    const v16, 0x7f120265

    goto :goto_7

    :cond_1d
    if-eqz v15, :cond_1e

    const v16, 0x7f1204dd

    goto :goto_7

    :cond_1e
    const v16, 0x7f1204dc

    goto/16 :goto_7

    :cond_1f
    if-eqz v9, :cond_27

    if-eqz v10, :cond_27

    xor-int/lit8 v18, v11, 0x1

    if-eqz v18, :cond_27

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_23

    if-eqz v5, :cond_21

    if-eqz v15, :cond_20

    const v16, 0x7f12024e

    goto/16 :goto_7

    :cond_20
    const v16, 0x7f12024d

    goto/16 :goto_7

    :cond_21
    if-eqz v15, :cond_22

    const v16, 0x7f120530

    goto/16 :goto_7

    :cond_22
    const v16, 0x7f12052f

    goto/16 :goto_7

    :cond_23
    if-eqz v5, :cond_25

    if-eqz v15, :cond_24

    const v16, 0x7f120268

    goto/16 :goto_7

    :cond_24
    const v16, 0x7f120267

    goto/16 :goto_7

    :cond_25
    if-eqz v15, :cond_26

    const v16, 0x7f120532

    goto/16 :goto_7

    :cond_26
    const v16, 0x7f120531

    goto/16 :goto_7

    :cond_27
    if-eqz v9, :cond_28

    if-nez v8, :cond_2a

    :cond_28
    if-eqz v9, :cond_29

    if-nez v13, :cond_2a

    :cond_29
    if-eqz v9, :cond_8

    if-eqz v11, :cond_8

    :cond_2a
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e

    if-eqz v5, :cond_2c

    if-eqz v15, :cond_2b

    const v16, 0x7f120247

    goto/16 :goto_7

    :cond_2b
    const v16, 0x7f120246

    goto/16 :goto_7

    :cond_2c
    if-eqz v15, :cond_2d

    const v16, 0x7f1204b3

    goto/16 :goto_7

    :cond_2d
    const v16, 0x7f1204b2

    goto/16 :goto_7

    :cond_2e
    if-eqz v5, :cond_30

    if-eqz v15, :cond_2f

    const v16, 0x7f120261

    goto/16 :goto_7

    :cond_2f
    const v16, 0x7f120260

    goto/16 :goto_7

    :cond_30
    if-eqz v15, :cond_31

    const v16, 0x7f1204b5

    goto/16 :goto_7

    :cond_31
    const v16, 0x7f1204b4

    goto/16 :goto_7

    :cond_32
    if-eqz v9, :cond_3a

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_36

    if-eqz v5, :cond_34

    if-eqz v15, :cond_33

    const v16, 0x7f120251

    goto/16 :goto_7

    :cond_33
    const v16, 0x7f12024a

    goto/16 :goto_7

    :cond_34
    if-eqz v15, :cond_35

    const v16, 0x7f120504

    goto/16 :goto_7

    :cond_35
    const v16, 0x7f120503

    goto/16 :goto_7

    :cond_36
    if-eqz v5, :cond_38

    if-eqz v15, :cond_37

    const v16, 0x7f12026c

    goto/16 :goto_7

    :cond_37
    const v16, 0x7f120264

    goto/16 :goto_7

    :cond_38
    if-eqz v15, :cond_39

    const v16, 0x7f120506

    goto/16 :goto_7

    :cond_39
    const v16, 0x7f120505

    goto/16 :goto_7

    :cond_3a
    if-eqz v12, :cond_4a

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_42

    if-eqz v13, :cond_3e

    if-eqz v5, :cond_3c

    if-eqz v15, :cond_3b

    const v16, 0x7f120255

    goto/16 :goto_7

    :cond_3b
    const v16, 0x7f120254

    goto/16 :goto_7

    :cond_3c
    if-eqz v15, :cond_3d

    const v16, 0x7f120545

    goto/16 :goto_7

    :cond_3d
    const v16, 0x7f120544

    goto/16 :goto_7

    :cond_3e
    if-eqz v5, :cond_40

    if-eqz v15, :cond_3f

    const v16, 0x7f120256

    goto/16 :goto_7

    :cond_3f
    const v16, 0x7f120245

    goto/16 :goto_7

    :cond_40
    if-eqz v15, :cond_41

    const v16, 0x7f1206e7

    goto/16 :goto_7

    :cond_41
    const v16, 0x7f120660

    goto/16 :goto_7

    :cond_42
    if-eqz v13, :cond_46

    if-eqz v5, :cond_44

    if-eqz v15, :cond_43

    const v16, 0x7f120270

    goto/16 :goto_7

    :cond_43
    const v16, 0x7f12026f

    goto/16 :goto_7

    :cond_44
    if-eqz v15, :cond_45

    const v16, 0x7f120547

    goto/16 :goto_7

    :cond_45
    const v16, 0x7f120546

    goto/16 :goto_7

    :cond_46
    if-eqz v5, :cond_48

    if-eqz v15, :cond_47

    const v16, 0x7f12025f

    goto/16 :goto_7

    :cond_47
    const v16, 0x7f12025e

    goto/16 :goto_7

    :cond_48
    if-eqz v15, :cond_49

    const v16, 0x7f120568

    goto/16 :goto_7

    :cond_49
    const v16, 0x7f120567

    goto/16 :goto_7

    :cond_4a
    if-eqz v7, :cond_5a

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_52

    if-eqz v8, :cond_4e

    if-eqz v5, :cond_4c

    if-eqz v15, :cond_4b

    const v16, 0x7f120249

    goto/16 :goto_7

    :cond_4b
    const v16, 0x7f120248

    goto/16 :goto_7

    :cond_4c
    if-eqz v15, :cond_4d

    const v16, 0x7f1204df

    goto/16 :goto_7

    :cond_4d
    const v16, 0x7f1204de

    goto/16 :goto_7

    :cond_4e
    if-eqz v5, :cond_50

    if-eqz v15, :cond_4f

    const v16, 0x7f120256

    goto/16 :goto_7

    :cond_4f
    const v16, 0x7f120245

    goto/16 :goto_7

    :cond_50
    if-eqz v15, :cond_51

    const v16, 0x7f1206e7

    goto/16 :goto_7

    :cond_51
    const v16, 0x7f120660

    goto/16 :goto_7

    :cond_52
    if-eqz v8, :cond_56

    if-eqz v5, :cond_54

    if-eqz v15, :cond_53

    const v16, 0x7f120263

    goto/16 :goto_7

    :cond_53
    const v16, 0x7f120262

    goto/16 :goto_7

    :cond_54
    if-eqz v15, :cond_55

    const v16, 0x7f1204e1

    goto/16 :goto_7

    :cond_55
    const v16, 0x7f1204e0

    goto/16 :goto_7

    :cond_56
    if-eqz v5, :cond_58

    if-eqz v15, :cond_57

    const v16, 0x7f12025b

    goto/16 :goto_7

    :cond_57
    const v16, 0x7f12025a

    goto/16 :goto_7

    :cond_58
    if-eqz v15, :cond_59

    const v16, 0x7f1204ee

    goto/16 :goto_7

    :cond_59
    const v16, 0x7f1204ed

    goto/16 :goto_7

    :cond_5a
    if-eqz v10, :cond_8

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_62

    if-eqz v11, :cond_5e

    if-eqz v5, :cond_5c

    if-eqz v15, :cond_5b

    const v16, 0x7f120253

    goto/16 :goto_7

    :cond_5b
    const v16, 0x7f120252

    goto/16 :goto_7

    :cond_5c
    if-eqz v15, :cond_5d

    const v16, 0x7f120534

    goto/16 :goto_7

    :cond_5d
    const v16, 0x7f120533

    goto/16 :goto_7

    :cond_5e
    if-eqz v5, :cond_60

    if-eqz v15, :cond_5f

    const v16, 0x7f120256

    goto/16 :goto_7

    :cond_5f
    const v16, 0x7f120245

    goto/16 :goto_7

    :cond_60
    if-eqz v15, :cond_61

    const v16, 0x7f1206e7

    goto/16 :goto_7

    :cond_61
    const v16, 0x7f120660

    goto/16 :goto_7

    :cond_62
    if-eqz v11, :cond_66

    if-eqz v5, :cond_64

    if-eqz v15, :cond_63

    const v16, 0x7f12026e

    goto/16 :goto_7

    :cond_63
    const v16, 0x7f12026d

    goto/16 :goto_7

    :cond_64
    if-eqz v15, :cond_65

    const v16, 0x7f120536

    goto/16 :goto_7

    :cond_65
    const v16, 0x7f120535

    goto/16 :goto_7

    :cond_66
    if-eqz v5, :cond_68

    if-eqz v15, :cond_67

    const v16, 0x7f12025d

    goto/16 :goto_7

    :cond_67
    const v16, 0x7f12025c

    goto/16 :goto_7

    :cond_68
    if-eqz v15, :cond_69

    const v16, 0x7f12053f

    goto/16 :goto_7

    :cond_69
    const v16, 0x7f12053e

    goto/16 :goto_7

    :cond_6a
    if-eqz v15, :cond_70

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_6c

    if-eqz v5, :cond_6b

    const v16, 0x7f120272

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    return-object v18

    :cond_6b
    const v16, 0x7f1206e7

    goto :goto_8

    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v18

    if-nez v18, :cond_6e

    if-eqz v3, :cond_6e

    if-eqz v5, :cond_6d

    const v16, 0x7f120272

    goto :goto_8

    :cond_6d
    const v16, 0x7f1206e9

    goto :goto_8

    :cond_6e
    if-eqz v5, :cond_6f

    const v16, 0x7f120272

    goto :goto_8

    :cond_6f
    const v16, 0x7f1206e8

    goto :goto_8

    :cond_70
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_72

    if-eqz v5, :cond_71

    const v16, 0x7f120245

    goto :goto_8

    :cond_71
    const v16, 0x7f120660

    goto :goto_8

    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v18

    if-nez v18, :cond_74

    if-eqz v3, :cond_74

    if-eqz v5, :cond_73

    const v16, 0x7f120259

    goto :goto_8

    :cond_73
    const v16, 0x7f120663

    goto :goto_8

    :cond_74
    if-eqz v5, :cond_75

    const v16, 0x7f120259

    goto :goto_8

    :cond_75
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getDefaultInstruction(I)I

    move-result v16

    goto :goto_8
.end method

.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object v0
.end method

.method public getStopHelpText()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v3

    :goto_0
    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v6

    xor-int/lit8 v1, v6, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v2

    :goto_2
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    const v4, 0x7f120560

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    const v4, 0x7f1204eb

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    const v4, 0x7f120526

    goto :goto_3

    :cond_5
    const-string/jumbo v6, ""

    return-object v6
.end method

.method public hideTransientIndication()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public restoreIndicationText(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method public restoreLockIcons()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOriginalLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOriginalLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isLockIconVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(ZZ)V

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method public setHelpText(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getHelpText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setRestingIndication(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIndicationTextForLockStar(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method public setLockIconForLockStar(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLockSecureIconForLockStar(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isLockIconVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(ZZ)V

    return-void
.end method

.method public setRestingIndication(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showBounceAnimation()V
    .locals 11

    const/4 v10, 0x2

    const v9, 0x3f733333    # 0.95f

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAffordancePivotY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v8, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v7

    aput v9, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v8, [Landroid/animation/Animator;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v7

    aput v9, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showTransientIndication(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method
