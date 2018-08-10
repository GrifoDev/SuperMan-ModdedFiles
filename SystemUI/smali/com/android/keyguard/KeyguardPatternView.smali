.class public Lcom/android/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$1;,
        Lcom/android/keyguard/KeyguardPatternView$2;,
        Lcom/android/keyguard/KeyguardPatternView$3;,
        Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator",
        "<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;",
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;",
        "Lcom/android/systemui/widget/SystemUIWidgetCallback;"
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I


# instance fields
.field private m2StepVerification:Z

.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mAttached:Z

.field private mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mBouncerShowing:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCountdownElapsedtime:J

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mEcaView:Landroid/view/View;

.field private mEnableHaptics:Z

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mGoingToSleep:Z

.field private mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field private mIsAccountExist:Z

.field private mIsMobileKeyboardCovered:I

.field private mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

.field private mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

.field private mPatternIrisHelpText:Landroid/widget/TextView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPromptReason:I

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private mSecurityView:Landroid/widget/LinearLayout;

.field private mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->m2StepVerification:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsAccountExist:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMobileKeyboardCovered:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/systemui/KeyguardTextBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardPatternView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownElapsedtime:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardPatternView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableHaptics:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mGoingToSleep:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardPatternView;->-com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardPatternView;->-com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->values()[Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->SamsungAccountOnly:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/keyguard/KeyguardPatternView;->-com-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardPatternView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownElapsedtime:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPatternView;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->getStringFromId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleBiometricsAttemptLockout(J)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KeyguardPatternView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->setSubSecurityMessage(II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateLayout()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->updatePatternVisibility(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v9, 0x10c000f

    const v8, 0x3f99999a    # 1.2f

    const v7, 0x3f19999a    # 0.6f

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->m2StepVerification:Z

    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownElapsedtime:J

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v5, 0x40000000    # 2.0f

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    const-wide/16 v2, 0x7d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    move v4, v8

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    const-wide/16 v2, 0xbb

    move-object v1, p1

    move v4, v8

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->m2StepVerification:Z

    :cond_0
    return-void
.end method

.method private calculatePaddingBottom()I
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit16 v1, v1, -0x400

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private checkAccountExist(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    return-void
.end method

.method private disableDevicePermanently()V
    .locals 3

    const-string/jumbo v0, "SecurityPatternView"

    const-string/jumbo v1, "disableDevicePermanently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v2, 0x1040294

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v2, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SecurityPatternView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "displayDefaultSecurityMessage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->m2StepVerification:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f1204b1

    invoke-direct {p0, v2, v6}, Lcom/android/keyguard/KeyguardPatternView;->setSubSecurityMessage(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/SecLockPatternView;->clearPattern()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v2, v7}, Lcom/android/keyguard/SecLockPatternView;->setEnabled(Z)V

    invoke-direct {p0, v7, v6}, Lcom/android/keyguard/KeyguardPatternView;->setSubSecurityMessage(II)V

    goto :goto_0
.end method

.method private getStringFromId(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->Normal:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->updateDexButtonVisibility()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->stop()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    :cond_2
    iput-wide p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownElapsedtime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleBiometricsAttemptLockout(J)V
    .locals 11

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, p1, v8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->stop()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    :cond_0
    const-string/jumbo v0, "SecurityPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleBiometricsAttemptLockout( elapsedRealtimeDeadline = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " )"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x3e8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private setSubSecurityMessage(II)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ltz p2, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->getStringFromId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardPatternView;->-getcom-android-keyguard-EmergencyCarrierArea$FooterModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter()V

    :cond_1
    return-void

    :pswitch_0
    const-string/jumbo v0, "SecurityPatternView"

    const-string/jumbo v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "SecurityPatternView"

    const-string/jumbo v1, "mode ForgotLockPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 8

    const/16 v6, 0x8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v4}, Lcom/android/keyguard/SecLockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07023c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07023b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->calculatePaddingBottom()I

    move-result v5

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07022e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/SecLockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardMessageArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070239

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070238

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardHintTextArea;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardHintTextArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070237

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintTextSize()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07026e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07026c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->m2StepVerification:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070262

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardMessageArea;->getKeyguardFontScale()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {v4, v7, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07026f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method private updatePatternVisibility(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/SecLockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    if-eqz p7, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p7, :cond_2

    move/from16 v4, p6

    :goto_1
    if-eqz p7, :cond_3

    const/4 v5, 0x0

    :goto_2
    if-eqz p7, :cond_4

    const/4 v6, 0x0

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v0 .. v13}, Lcom/android/keyguard/SecLockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    if-eqz p9, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const/4 v9, 0x0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move/from16 v5, p6

    goto :goto_2

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isHintText()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->getPasswordHintText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPatternView_18103(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPatternView_20274(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecurityPatternView"

    const-string/jumbo v1, "Stop recognition by touch on patternView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v1, ""

    const/16 v2, -0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->irisAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_6

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const v1, 0x7f0a0309

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/SecLockPatternView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/SecLockPatternView;->setSaveEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/SecLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/SecLockPatternView;->setTactileFeedbackEnabled(Z)V

    const v1, 0x7f0a0215

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintText()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const v1, 0x7f0a02c3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0a01c8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const v2, 0x7f12063f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/-$Lambda$oZunCo7YRnWwHfeo9lRYuShasms;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$Lambda$oZunCo7YRnWwHfeo9lRYuShasms;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f0a02a1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const v1, 0x7f0a00f4

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0239

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getCurUpdateFlag()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->updateStyle(I)V

    const v1, 0x7f0a028a

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateLayout()V

    const v1, 0x7f0a01a0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    :cond_2
    const v1, 0x7f0a0089

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableHaptics:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibrator:Landroid/os/Vibrator;

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->checkAccountExist(Landroid/content/Context;)V

    :cond_3
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMobileKeyboardCovered:I

    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardPatternView;->updatePatternVisibility(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/-$Lambda$oZunCo7YRnWwHfeo9lRYuShasms$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$Lambda$oZunCo7YRnWwHfeo9lRYuShasms$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;->stop()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/util/KeyguardBiometricsCountDownTimer;

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownElapsedtime:J

    return-void
.end method

.method public onResume(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_0

    return v8

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    if-eqz v2, :cond_1

    const-wide/16 v4, 0x1af4

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/SecLockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mAttached:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVisibilityChanged() visibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070225

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string/jumbo v3, "dead_zone_port_x1"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "dead_zone_port_x2"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "dead_zone_port_y1"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070226

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string/jumbo v3, "dead_zone_port_x1"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "dead_zone_port_x2"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "dead_zone_port_y1"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method reportAuditLog(I)V
    .locals 7

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v0, Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " has exceeded number of authentication failure limit when using "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "pattern authentication"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    move v2, v1

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public reset()V
    .locals 12

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/keyguard/SecLockPatternView;->setInStealthMode(Z)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v5}, Lcom/android/keyguard/SecLockPatternView;->enableInput()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v5, v9}, Lcom/android/keyguard/SecLockPatternView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v5}, Lcom/android/keyguard/SecLockPatternView;->clearPattern()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    cmp-long v5, v0, v10

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintText()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_4
    sget-boolean v5, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMobileKeyboardCovered:I

    if-ne v5, v9, :cond_8

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    sget-boolean v5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintText()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_5
    :goto_1
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_6

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsAccountExist:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/EmergencyCarrierArea$FooterMode;)V

    :cond_6
    iget v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsMobileKeyboardCovered:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/SecLockPatternView;->setVisibility(I)V

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    cmp-long v5, v2, v10

    if-eqz v5, :cond_9

    cmp-long v5, v0, v10

    if-nez v5, :cond_9

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardPatternView;->handleBiometricsAttemptLockout(J)V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    sget-boolean v5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintText()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 8

    const/16 v7, 0x1388

    const/4 v6, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPromptReason:I

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0
.end method

.method public startAppearAnimation()V
    .locals 7

    const/4 v6, 0x2

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x14d

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4

    const v1, 0x3f333333    # 0.7f

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockPatternView;->clearPattern()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method

.method public updateStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecLockPatternView;->updateViewStyle(I)V

    return-void
.end method
