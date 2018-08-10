.class public Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "ConfirmLockDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$1;,
        Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$2;,
        Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;,
        Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$InternalActivity;,
        Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-accessibility-directionlock-ConfirmLockDirection$StageSwitchesValues:[I


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_STEPCIRCLE_THRESHOLD:I

.field private STEP_CIRCLE_LEFT_MARGIN:I

.field private STEP_CIRCLE_RIGHT_MARGIN:I

.field private STEP_CIRCLE_SIZE:I

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mBackUpPinButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChallengeFace:J

.field private mChallengeIris:J

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentPwd:Ljava/lang/String;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mEffectiveUserId:I

.field private mEmptyString:Ljava/lang/String;

.field private mFlagForEnabled:Z

.field private mFlgToChkConfChng:Z

.field private mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyListAnimator:Landroid/animation/ValueAnimator;

.field private mGreyStepCircleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleViewState:Z

.field private mHeaderString:Ljava/lang/String;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mLeftBtnState:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewStepCircle:Landroid/widget/ImageView;

.field private mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

.field private mOldStepCircle:Landroid/widget/ImageView;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPendingLockCheckFace:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPendingLockCheckIris:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRightBtnState:Z

.field private mRightButton:Landroid/widget/Button;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mStepCircleDown:Landroid/graphics/Bitmap;

.field private mStepCircleLayout:Landroid/widget/LinearLayout;

.field private mStepCircleLeft:Landroid/graphics/Bitmap;

.field private mStepCircleRight:Landroid/graphics/Bitmap;

.field private mStepCircleUp:Landroid/graphics/Bitmap;

.field private playBeep:Z

.field private playVibration:Z

.field private playVoice:Z

.field private showArrow:Z

.field private stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeFace:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeIris:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-accessibility-directionlock-ConfirmLockDirection$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-com-samsung-android-settings-accessibility-directionlock-ConfirmLockDirection$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-com-samsung-android-settings-accessibility-directionlock-ConfirmLockDirection$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->values()[Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->LockedOut:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->NeedToUnlock:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->NeedToUnlockWrong:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-com-samsung-android-settings-accessibility-directionlock-ConfirmLockDirection$StageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheckFace:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheckIris:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->checkForCorrectPassword()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->clearStepCircles()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleStepCircle(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;ZLandroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->onDirectionChecking(ZLandroid/content/Intent;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$1;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    const/16 v0, 0x63

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEmptyString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHandleViewState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$2;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$3;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private attachListeners()V
    .locals 2

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "attachListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$8;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$9;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mBackUpPinButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$10;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    return-void
.end method

.method private checkForCorrectPassword()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "has_challenge"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "ConfirmLockDirection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkForCorrectPassword verifyChallenge:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private clearStepCircles()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "clearStepCircles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    return-void
.end method

.method private endOngoingAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private freeUpMemory()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "freeUpMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "handleAttemptLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->LockedOut:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleStepCircle(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    const-string/jumbo v1, "ConfirmLockDirection"

    const-string/jumbo v2, "handleStepCircle"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    const-string/jumbo v1, "UP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v3, -0x3b3b3c

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->performAnimations()V

    :goto_1
    return-void

    :cond_4
    const-string/jumbo v1, "LEFT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "RIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "DOWN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private handleViewState()V
    .locals 6

    const/4 v2, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleAttemptLockout(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlagForEnabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DirectionLockView;->isEnabled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->NeedToUnlock:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    goto :goto_0
.end method

.method private initializeAnimations()V
    .locals 14

    const-wide/16 v12, 0x64

    const/4 v10, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v2, "ConfirmLockDirection"

    const-string/jumbo v3, "initializeAnimations"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v9}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-array v2, v10, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    div-long/2addr v4, v12

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$4;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$5;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070171

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070172

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v0, v2

    new-array v2, v10, [F

    double-to-float v3, v0

    const/4 v4, 0x0

    aput v3, v2, v4

    aput v8, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    div-long/2addr v4, v12

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$6;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$7;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeDirectionView()V
    .locals 2

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "initializeDirectionView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    iget v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->setSettingsMode()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->reloadBitmap()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->showArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    return-void
.end method

.method private initializing()V
    .locals 2

    const v1, 0x7f0d0081

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setContentView(I)V

    const v1, 0x7f12102c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEffectiveUserId:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializeIdentifiers()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->loadCustomSettings()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializeDirectionView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->loadStepCircleVariables()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializeAnimations()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setInitialState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->attachListeners()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEffectiveUserId:I

    goto :goto_0
.end method

.method private isVibrationSupport()Z
    .locals 2

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-static {p0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private loadCustomSettings()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "ConfirmLockDirection"

    const-string/jumbo v4, "loadCustomSettings"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v1, v4, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVoice:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v1, v4, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playBeep:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->isVibrationSupport()Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVibration:Z

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->showArrow:Z

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->playVibration:Z

    goto :goto_2
.end method

.method private loadStepCircleVariables()V
    .locals 5

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "loadStepCircleVariables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0828

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    const v4, 0x7f08014f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    const v4, 0x7f080152

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    const v4, 0x7f080150

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->STEP_CIRCLE_SIZE:I

    const v4, 0x7f080151

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private onDirectionChecking(ZLandroid/content/Intent;I)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->checkForPendingIntent()V

    const/4 v3, -0x1

    invoke-virtual {p0, v3, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v2, -0x1

    const/4 v2, 0x0

    if-lez p3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->NeedToUnlockWrong:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->postClearPatternRunnable()V

    goto :goto_0
.end method

.method private performAnimations()V
    .locals 2

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "performAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 2

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "postClearPatternRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    return-void
.end method

.method private setInitialState()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "ConfirmLockDirection"

    const-string/jumbo v5, "setInitialState"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->NeedToUnlock:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    if-eqz v4, :cond_3

    iput-boolean v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DirectionLockView;->showDirectionArrow(C)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iput-boolean v7, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlagForEnabled:Z

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, ""

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/DirectionLockView;->setCurrentPassword(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_2
    invoke-direct {p0, v0, v7}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleStepCircle(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iput-boolean v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlagForEnabled:Z

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "UP"

    goto :goto_2

    :sswitch_1
    const-string/jumbo v0, "RIGHT"

    goto :goto_2

    :sswitch_2
    const-string/jumbo v0, "DOWN"

    goto :goto_2

    :sswitch_3
    const-string/jumbo v0, "LEFT"

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v4

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setRequestedOrientation(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v3, -0x1

    const/4 v3, 0x0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4c -> :sswitch_3
        0x52 -> :sswitch_1
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, "ConfirmLockDirection"

    const-string/jumbo v3, "startCheckPattern"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    :try_start_0
    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEffectiveUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$12;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/content/Intent;)V

    invoke-static {v2, p1, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "startVerifyPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mEffectiveUserId:I

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeIris:J

    iput-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeFace:J

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeIris:J

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallengeFace:J

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    new-instance v5, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;

    invoke-direct {v5, p0, p2, p1, v4}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$11;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Landroid/content/Intent;Ljava/util/List;I)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private updateStage(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string/jumbo v0, "ConfirmLockDirection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStage to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->clearStepCircles()V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-getcom-samsung-android-settings-accessibility-directionlock-ConfirmLockDirection$StageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "NeedToUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f120834

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120842

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "NeedToUnlockWrong"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f121018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "LockedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected checkForPendingIntent()V
    .locals 12

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.TASK_ID"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v3, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v7, v11, v0}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v9

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x14b4

    return v0
.end method

.method initializeIdentifiers()V
    .locals 2

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "initializeIdentifiers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    const v0, 0x7f0a025c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DirectionLockView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const v0, 0x7f0a0499

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    const v0, 0x7f0a0714

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    const v0, 0x7f0a00c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mBackUpPinButton:Landroid/widget/Button;

    const v0, 0x7f0a08e9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    const v0, 0x7f0a03b1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlagForEnabled:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->endOngoingAnimations()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializing()V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHandleViewState:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleViewState()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "onCreate savedInstanceState is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "currentPwd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    const-string/jumbo v0, "headerString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    const-string/jumbo v0, "leftBtnState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    const-string/jumbo v0, "rightBtnState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mFlgToChkConfChng:Z

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->isInMultiWindowMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->setRequestedOrientation(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "challenge"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    const-string/jumbo v0, "ConfirmLockDirection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: challenge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mChallenge:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->initializing()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->freeUpMemory()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "ConfirmLockDirection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const v0, 0x7f120fe0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->finish()V

    return-void

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    const-string/jumbo v0, "ConfirmLockDirection"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHandleViewState:Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleViewState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    const-string/jumbo v0, "currentPwd"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mCurrentPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "headerString"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mHeaderString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "leftBtnState"

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mLeftBtnState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "rightBtnState"

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->mRightBtnState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
