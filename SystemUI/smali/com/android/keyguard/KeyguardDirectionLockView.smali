.class public Lcom/android/keyguard/KeyguardDirectionLockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardDirectionLockView$1;,
        Lcom/android/keyguard/KeyguardDirectionLockView$2;,
        Lcom/android/keyguard/KeyguardDirectionLockView$3;,
        Lcom/android/keyguard/KeyguardDirectionLockView$4;,
        Lcom/android/keyguard/KeyguardDirectionLockView$5;,
        Lcom/android/keyguard/KeyguardDirectionLockView$6;,
        Lcom/android/keyguard/KeyguardDirectionLockView$7;,
        Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;,
        Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;
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
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;"
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues:[I

.field private static final mBuildCharacteristics:Ljava/lang/String;


# instance fields
.field private final ANIMATION_DURATION:J

.field private final ARROW_DOT_THRESHOLD:J

.field private final MAX_DOTS_ALLOWED:I

.field private final MIN_INPUT_ALLOWED:I

.field private final WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

.field _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelDirectionRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mDot:Landroid/widget/ImageView;

.field private mDotAnimator:Landroid/animation/ValueAnimator;

.field private mDotBackground:Landroid/graphics/drawable/Drawable;

.field private mDotLayout:Landroid/widget/LinearLayout;

.field private mDotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDotListAnimator:Landroid/animation/ValueAnimator;

.field private mDotMarginLeft:D

.field private mDotMarginRight:D

.field private mEMAPress:Z

.field private mEcaView:Landroid/view/View;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorTextEnterAnim:Landroid/view/animation/Animation;

.field private mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mErrorTextExitAnim:Landroid/view/animation/Animation;

.field private mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mForgotDirectionLockButton:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mIsAccountExist:Z

.field private mIsChecking:Z

.field private mIsSleeping:Z

.field private mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

.field private mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastFooterMode:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mPlayBeep:Z

.field private mPlayVibration:Z

.field private mPlayVoice:Z

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mShadowColor:I

.field private mShowArrow:Z

.field private final mTextColor:I

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

.field private mTotalFailedDirectionLockAttempts:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibratePattern:[J

.field private mVibraterService:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardDirectionLockView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MIN_INPUT_ALLOWED:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsAccountExist:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsChecking:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/keyguard/KeyguardDirectionLockView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastPokeTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVoice:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/keyguard/KeyguardDirectionLockView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    return v0
.end method

.method static synthetic -get27(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mVibraterService:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->-com-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->-com-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->values()[Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ForgotLockDirection:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->-com-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardDirectionLockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsChecking:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/KeyguardDirectionLockView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastPokeTime:J

    return-wide p1
.end method

.method static synthetic -set6(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/keyguard/KeyguardDirectionLockView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->isSupportPatternBackupPin()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardDirectionLockView;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateErrorText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->checkPasswordAndHandle()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleAndPerformDotAnimations()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KeyguardDirectionLockView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBuildCharacteristics:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MAX_DOTS_ALLOWED:I

    const-string/jumbo v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MIN_INPUT_ALLOWED:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastPokeTime:J

    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$1;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$2;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEMAPress:Z

    const-wide/16 v0, 0x50

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->ARROW_DOT_THRESHOLD:J

    const-wide/16 v0, 0x63

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->ANIMATION_DURATION:J

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mShadowColor:I

    const v0, -0xbbbbbc

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextColor:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorMessage:Ljava/lang/String;

    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$3;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$4;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$5;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    const/16 v0, 0xc

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mVibratePattern:[J

    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$6;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$7;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastFooterMode:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->makeAnimations()V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3c
        0x19
        0x3c
        0x19
        0x3c
        0x32
        0x3c
        0x19
        0x3c
        0x19
        0x3c
    .end array-data
.end method

.method private checkAccountExist(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->start()V

    return-void
.end method

.method private checkPasswordAndHandle()V
    .locals 4

    const/16 v2, 0x2c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "do nothing on no direction input case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MIN_INPUT_ALLOWED:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/KeyguardDirectionLockView$8;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$8;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private clearDots()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private disableDevicePermanently()V
    .locals 3

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in disableDevicePermanently()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    const v2, 0x10409c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 3

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in displayDefaultSecurityMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private handleAndPerformDotAnimations()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_2
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginLeft:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginRight:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in handleAttemptLockout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$14;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardDirectionLockView$14;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$14;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    const-string/jumbo v4, "KeyguardDirectionLockView"

    const-string/jumbo v5, "in isDeviceDisabledForMaxFailedAttempt()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    const-string/jumbo v4, "KeyguardDirectionLockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_0

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    const-string/jumbo v4, "KeyguardDirectionLockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v4, "KeyguardDirectionLockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSupportPatternBackupPin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isTablet()Z
    .locals 2

    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBuildCharacteristics:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private makeAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_error_text_enter_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_error_text_exit_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private resetmTimer()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->interrupt()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    :cond_0
    return-void
.end method

.method private updateErrorText(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_wrong_direction_lock_vzw:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_wrong_direction_lock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V
    .locals 2

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in updateFooter()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastFooterMode:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardDirectionLockView;->-getcom-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter()V

    :cond_1
    return-void

    :pswitch_0
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "mode ForgotLockDirection changing to BackupPIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "mode VerifyUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0

    return-void
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

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardDirectionLockView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in hasOverlappingRendering()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public needsInput()Z
    .locals 2

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in needsInput()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 14

    const-wide/16 v12, 0x63

    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const-string/jumbo v4, "KeyguardDirectionLockView"

    const-string/jumbo v7, "in onFinishInflate()"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v4, :cond_5

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/keyguard/R$id;->directionLockView:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DirectionLockView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v4, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v4, Landroid/speech/tts/TextToSpeech;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v4, v7, v8}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "tts_default_rate"

    const/16 v8, 0x64

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "KeyguardDirectionLockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTextToSpeech Rate - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v7, v1

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "accessibility"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "universal_lock_vibration"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVibration:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "universal_lock_voice"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVoice:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "universal_lock_visible"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mShowArrow:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "universal_lock_beep"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayBeep:Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHashMap:Ljava/util/HashMap;

    const-string/jumbo v7, "com.samsung.SMT.KEY_PARAM"

    const-string/jumbo v8, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->direction_lock_keyguard_arrow_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    :goto_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mShowArrow:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVoice:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVibration:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayBeep:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    new-instance v4, Lcom/android/keyguard/KeyguardDirectionLockView$9;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$9;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

    sget v4, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEcaView:Landroid/view/View;

    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    sget v7, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/keyguard/KeyguardDirectionLockView$10;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$10;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v4, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v4, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KeyguardDirectionLockView"

    const-string/jumbo v7, "in onFinishInflate() mSecurityMessageDisplay IS NOT NULL"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->disableDevicePermanently()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mVibraterService:Landroid/os/Vibrator;

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    sget v4, Lcom/android/keyguard/R$id;->dot_layout:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_left_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iput-wide v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginLeft:D

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_right_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iput-wide v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginRight:D

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$drawable;->keyguard_direction_view_dot_circle:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/keyguard/KeyguardDirectionLockView$11;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$11;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/keyguard/KeyguardDirectionLockView$12;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$12;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_size:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iget-wide v10, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginLeft:D

    add-double/2addr v8, v10

    iget-wide v10, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginRight:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    div-double v2, v8, v10

    const/4 v4, 0x2

    new-array v4, v4, [F

    double-to-float v7, v2

    aput v7, v4, v6

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/keyguard/KeyguardDirectionLockView$13;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$13;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->checkAccountExist(Landroid/content/Context;)V

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto/16 :goto_1

    :cond_7
    move v4, v6

    goto/16 :goto_2

    :cond_8
    move v4, v6

    goto/16 :goto_3

    :cond_9
    move v4, v6

    goto/16 :goto_4

    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView()Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    goto/16 :goto_5

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->interrupt()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    return-void
.end method

.method public onResume(I)V
    .locals 2

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onWindowFocusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v4, 0x5

    const-string/jumbo v2, "KeyguardDirectionLockView"

    const-string/jumbo v3, "in reset()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleAttemptLockout(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsAccountExist:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    if-lt v2, v4, :cond_2

    sget-object v2, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ForgotLockDirection:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->isSupportPatternBackupPin()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    if-lt v2, v4, :cond_3

    sget-object v2, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 8

    const/16 v7, 0x1388

    const/4 v6, 0x0

    const-string/jumbo v3, "KeyguardDirectionLockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showPromptReason() reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0
.end method

.method public startAppearAnimation()V
    .locals 2

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in startAppearAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in startDisappearAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->interrupt()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method

.method public updateChildViewsLook()V
    .locals 0

    return-void
.end method
