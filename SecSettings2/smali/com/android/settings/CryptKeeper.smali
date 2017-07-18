.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$1;,
        Lcom/android/settings/CryptKeeper$2;,
        Lcom/android/settings/CryptKeeper$3;,
        Lcom/android/settings/CryptKeeper$4;,
        Lcom/android/settings/CryptKeeper$5;,
        Lcom/android/settings/CryptKeeper$6;,
        Lcom/android/settings/CryptKeeper$7;,
        Lcom/android/settings/CryptKeeper$8;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$DirectionStichingTimer;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;,
        Lcom/android/settings/CryptKeeper$ValidationTask;
    }
.end annotation


# static fields
.field private static final CSC_IMS_MDM_TYPE:Ljava/lang/String;

.field private static sCountryCode:Ljava/lang/String;

.field private static sEmergencyCallStatus:Z

.field private static sMaxFailedAttempts:I

.field private static sPasswordMaxLength:I

.field private static sSalesCode:Ljava/lang/String;

.field private static sSavedPassword:Ljava/lang/String;

.field private static sfailedAttemptCounts:Ljava/lang/Integer;


# instance fields
.field private DOT_MARGIN_LEFT:D

.field private DOT_MARGIN_RIGHT:D

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mCancelDirectionRunnable:Ljava/lang/Runnable;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCooldown:Z

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

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

.field private mEmergencyCall:Landroid/widget/Button;

.field private mEncrypt:Z

.field private mEncryptionGoneBad:I

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private mFieldLayout:Landroid/widget/LinearLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCheckSleeping:Z

.field mKeyProp:Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

.field private mKeypressSoundCountup:I

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field mOdeProp:Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressBarLayout:Landroid/widget/ProgressBar;

.field private mReleaseWakeLockCountdown:I

.field private mResetButton:Landroid/widget/Button;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field mStichingTimer:Lcom/android/settings/CryptKeeper$DirectionStichingTimer;

.field mTelephony:Landroid/telephony/TelephonyManager;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWarningText:Landroid/widget/TextView;

.field private passwordType:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/CryptKeeper;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/CryptKeeper;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/settings/CryptKeeper;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    return v0
.end method

.method static synthetic -get13()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/CryptKeeper;->sCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14()I
    .locals 1

    sget v0, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    return v0
.end method

.method static synthetic -get15()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/android/settings/CryptKeeper;->sfailedAttemptCounts:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/CryptKeeper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/CryptKeeper;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/CryptKeeper;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/CryptKeeper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/CryptKeeper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/CryptKeeper;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mIsCheckSleeping:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/CryptKeeper;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/CryptKeeper;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    return p1
.end method

.method static synthetic -set6(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set7(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, Lcom/android/settings/CryptKeeper;->sfailedAttemptCounts:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->wipeStorage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->clearDots()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->handleAndPerformDotAnimations()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->resetStichingTimer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput v2, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeper;->sfailedAttemptCounts:Ljava/lang/Integer;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    sput-boolean v2, Lcom/android/settings/CryptKeeper;->sEmergencyCallStatus:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeper;->CSC_IMS_MDM_TYPE:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->sCountryCode:Ljava/lang/String;

    sput v2, Lcom/android/settings/CryptKeeper;->sPasswordMaxLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    iput v2, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    iput v2, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    const v0, 0x7f0b064b

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    iput v2, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    iput v2, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mButtonLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    new-instance v0, Lcom/android/settings/CryptKeeper$8;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method private beginAttempt()V
    .locals 3

    const v1, 0x7f1101f7

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0653

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private clearDots()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private cooldown()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    :cond_2
    const v1, 0x7f1101f7

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const v1, 0x7f0b0606

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_3
    const v1, 0x7f0b060e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private delayAudioNotification()V
    .locals 4

    const/4 v1, 0x2

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private dipToPixel(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private encryptionProgressInit()V
    .locals 5

    const/16 v4, 0xb4

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Encryption progress screen initializing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Acquiring wakelock."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "CryptKeeper"

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    const v2, 0x7f110207

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mProgressBarLayout:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleAndPerformDotAnimations()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mDotBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_2
    iget-wide v2, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_LEFT:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_RIGHT:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 14

    const-wide/16 v12, 0x5dc

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->clearDots()V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v7}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/DirectionLockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/internal/widget/DirectionLockView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    rem-int/lit8 v7, v7, 0xa

    if-nez v7, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_4

    iput-boolean v11, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const v7, 0x7f1101f7

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f1101f6

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    sget v7, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v2, v7, v8

    if-ne v2, v11, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0b0655

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    :cond_5
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    :cond_6
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string/jumbo v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-direct {p0, v10}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    goto :goto_0

    :cond_7
    const/16 v7, 0xa

    if-ge v2, v7, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0b0641

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_8
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v7

    iput v7, p0, Lcom/android/settings/CryptKeeper;->passwordType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget v7, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_9

    const v7, 0x7f0b0651

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v7, "CryptKeeper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error calling mount service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget v7, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    const v7, 0x7f0b064f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_a
    iget v7, p0, Lcom/android/settings/CryptKeeper;->passwordType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    const v7, 0x7f0b0652

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_b
    const v7, 0x7f0b0650

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-le v2, v9, :cond_1

    return v9

    :cond_1
    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v5, v11, v0

    if-gtz v5, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v9, :cond_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-gt v2, v9, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_8

    :cond_7
    :goto_2
    return v9

    :cond_8
    move v9, v10

    goto :goto_2
.end method

.method private isDebugView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 4

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v3, "Activity Not Found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private notifyUser()V
    .locals 5

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "mAudioManager is null, so need to gett"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    const/16 v2, 0x24

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/CryptKeeper;->mKeypressSoundCountup:I

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 12

    const v8, 0x7f110205

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    const v8, 0x7f110204

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    sget v8, Lcom/android/settings/CryptKeeper;->sPasswordMaxLength:I

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v9, 0x60000

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v8

    sput v8, Lcom/android/settings/CryptKeeper;->sPasswordMaxLength:I

    :cond_0
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    sget v11, Lcom/android/settings/CryptKeeper;->sPasswordMaxLength:I

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v7, Lcom/android/settings/CryptKeeper$11;

    invoke-direct {v7, p0}, Lcom/android/settings/CryptKeeper$11;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_1

    const/16 v8, 0xb4

    invoke-direct {p0, v8}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/16 v8, 0xb4

    invoke-direct {p0, v8}, Lcom/android/settings/CryptKeeper;->dipToPixel(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    const v8, 0x7f1101c7

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView;

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const v8, 0x7f1101b2

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/DirectionLockView;

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    :goto_0
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v8}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    const v8, 0x7f1101f9

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02f9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-double v8, v8

    iput-wide v8, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_LEFT:D

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02fa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-double v8, v8

    iput-wide v8, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_RIGHT:D

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200d4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotBackground:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0xa0

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/settings/CryptKeeper$12;

    invoke-direct {v9, p0}, Lcom/android/settings/CryptKeeper$12;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/settings/CryptKeeper$13;

    invoke-direct {v9, p0}, Lcom/android/settings/CryptKeeper$13;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02fb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-double v8, v8

    iget-wide v10, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_LEFT:D

    add-double/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings/CryptKeeper;->DOT_MARGIN_RIGHT:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    div-double v0, v8, v10

    const/4 v8, 0x2

    new-array v8, v8, [F

    double-to-float v9, v0

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0xa0

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDotListAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/settings/CryptKeeper$14;

    invoke-direct {v9, p0}, Lcom/android/settings/CryptKeeper$14;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_5

    const v8, 0x7f1101fb

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string/jumbo v8, "CryptKeeper"

    const-string/jumbo v9, "Removing the emergency Call button"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const v8, 0x7f11021b

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_6

    const/4 v8, 0x0

    invoke-direct {p0, v4, v8}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v8, Lcom/android/settings/CryptKeeper$15;

    invoke-direct {v8, p0, v4}, Lcom/android/settings/CryptKeeper$15;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v8, :cond_7

    const-string/jumbo v8, "CryptKeeper"

    const-string/jumbo v9, "Acquiring wakelock."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "power"

    invoke-virtual {p0, v8}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    if-eqz v6, :cond_7

    const-string/jumbo v8, "CryptKeeper"

    const/16 v9, 0x1a

    invoke-virtual {v6, v9, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/16 v8, 0x60

    iput v8, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    :cond_7
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    if-eqz v8, :cond_c

    :cond_8
    :goto_1
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    sget-object v8, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v9, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_9
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    :cond_a
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setMaxPasswordAttempts()V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v10, 0x1d4c0

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x480000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    return-void

    :cond_b
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/CryptKeeper;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/settings/CryptKeeper$16;

    invoke-direct {v9, p0, v4}, Lcom/android/settings/CryptKeeper$16;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetStichingTimer()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mIsCheckSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStichingTimer:Lcom/android/settings/CryptKeeper$DirectionStichingTimer;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Reset StichingTimer!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStichingTimer:Lcom/android/settings/CryptKeeper$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->interrupt()V

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mStichingTimer:Lcom/android/settings/CryptKeeper$DirectionStichingTimer;

    :cond_0
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto :goto_2
.end method

.method private final setBackFunctionality(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private setMaxPasswordAttempts()V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v6, "security.ode.maxattempts"

    invoke-virtual {v5, v7, v6}, Landroid/app/admin/DevicePolicyManager;->getPropertyFromFooter(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_0
    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getCCmodeForCryptKeeper()I

    move-result v3

    :cond_1
    if-nez v3, :cond_3

    if-lez v0, :cond_3

    sput v0, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "CryptKeeper"

    const-string/jumbo v6, "Can\'t get getCCmodeForCryptKeeper"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v5, "VZW"

    sget-object v6, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sput v8, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    if-lez v0, :cond_4

    sput v0, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string/jumbo v5, "TNG"

    sget-object v6, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sput v8, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    goto :goto_1

    :cond_6
    const/16 v5, 0x1e

    sput v5, Lcom/android/settings/CryptKeeper;->sMaxFailedAttempts:I

    goto :goto_1
.end method

.method private setupUi()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadKeyguardConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    :cond_1
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "error"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f040088

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    return-void

    :cond_3
    const-string/jumbo v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "progress"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const-string/jumbo v0, "vold.encrypt_type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "decrypt"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    const v0, 0x7f1100e5

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v0, 0x7f0b05f1

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f11020a

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const v0, 0x7f11020b

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "password"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_8
    const-string/jumbo v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "ro.boot.ucs_mode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mKeyProp:Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UCSCryptKeeperTask;-><init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_a
    const-string/jumbo v0, "persist.security.ucs.csname"

    const-string/jumbo v1, "boot_test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "2"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "unencrypted"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "security.knox_ucs_mode"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mOdeProp:Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    iget v5, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UCSCryptKeeperTask;-><init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_b
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UCSCryptKeeperTask;-><init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lcom/android/settings/CryptKeeper$9;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$9;-><init>(Lcom/android/settings/CryptKeeper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v0, :cond_5

    new-instance v1, Lcom/android/settings/CryptKeeper$ValidationTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$ValidationTask;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto/16 :goto_1
.end method

.method private showFactoryReset()V
    .locals 7

    const v6, 0x7f0b0643

    const/4 v5, 0x0

    const v4, 0x7f1100e5

    const v3, 0x7f1101f7

    const v1, 0x7f1101fc

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/CryptKeeper$10;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$10;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0656

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0657

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "security.fbe.fail_cause"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0642

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0646

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0647

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0644

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0645

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 5

    const/16 v4, 0x8

    const v2, 0x7f1101fb

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f1101fa

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mButtonLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Softphone"

    sget-object v3, Lcom/android/settings/CryptKeeper;->CSC_IMS_MDM_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v2, Lcom/android/settings/CryptKeeper$17;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$17;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_3

    const v1, 0x7f0b064a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_3
    const v1, 0x7f0b0649

    goto :goto_0
.end method

.method private updateProgress()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const-string/jumbo v9, "vold.encrypt_progress"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "error_partially_encrypted"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const v9, 0x7f040088

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    return-void

    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    const/16 v2, 0x32

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v9, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    if-nez v9, :cond_6

    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f0b0608

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v9, "CryptKeeper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Encryption progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string/jumbo v9, "vold.encrypt_time_remaining"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    add-int/lit8 v9, v6, 0x9

    div-int/lit8 v9, v9, 0xa

    mul-int/lit8 v6, v9, 0xa

    int-to-long v10, v6

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    const v9, 0x7f0b060d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_2
    const v9, 0x7f1101f7

    invoke-virtual {p0, v9}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v9, "CryptKeeper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error parsing progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const v9, 0x7f0b0609

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const v9, 0x7f0b0607

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_7

    const v9, 0x7f0b060b

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    const v9, 0x7f0b060c

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const v9, 0x7f0b060a

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method

.method private wipeStorage()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.REASON"

    const-string/jumbo v2, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/16 v8, 0x2000

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/view/Window;->setFlags(II)V

    iput-object p0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v7, "persist.omc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    const-string/jumbo v7, "ro.csc.country_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/CryptKeeper;->sCountryCode:Ljava/lang/String;

    const-string/jumbo v7, ""

    sget-object v8, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "null"

    sget-object v8, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/CryptKeeper;->sSalesCode:Ljava/lang/String;

    :cond_1
    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "ro.crypto.state"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "security.fbe.fail_cause"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "0"

    const-string/jumbo v7, "0"

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "encrypted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "trigger_restart_framework"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const-string/jumbo v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    return-void

    :cond_4
    const-string/jumbo v7, "security.ode.cryptkeeper.status"

    const-string/jumbo v8, "entered"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    const-string/jumbo v7, "statusbar"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v8, 0x3370000

    invoke-virtual {v7, v8}, Landroid/app/StatusBarManager;->disable(I)V

    if-eqz p1, :cond_6

    const-string/jumbo v7, "cooldown"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v7, :cond_7

    move-object v4, v3

    check-cast v4, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v7, v4, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v7, "CryptKeeper"

    const-string/jumbo v8, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string/jumbo v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v3, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_2
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, ""

    sput-object v1, Lcom/android/settings/CryptKeeper;->sSavedPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    new-instance v1, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$DecryptTask;)V

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v4

    :cond_2
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "mBootCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    const-string/jumbo v0, "Australia"

    sget-object v1, Lcom/android/settings/CryptKeeper;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "mBootCompleted"

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mBootCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    const/4 v0, 0x0

    return v0
.end method
