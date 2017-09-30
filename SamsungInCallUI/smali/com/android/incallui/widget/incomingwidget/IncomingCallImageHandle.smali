.class public Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;
    }
.end annotation


# static fields
.field public static final CLEAR_COVER_INCALL:Ljava/lang/String; = "clear_cover_incall"

.field public static final CLEAR_COVER_INCOMING_CALL:Ljava/lang/String; = "clear_cover_incoming"

.field public static final CLEAR_COVER_REDIAL_CALL:Ljava/lang/String; = "clear_cover_redial_call"

.field private static final INVALID_POINTER_ID:I = -0x1

.field public static final MAKE_TARGET_DURATION:I = 0x12c

.field public static final SVIEW_COVER_INCALL:Ljava/lang/String; = "sview_cover_incall"

.field public static final SVIEW_COVER_INCOMING_CALL:Ljava/lang/String; = "sview_cover_incoming"

.field public static final SVIEW_COVER_REDIAL_CALL:Ljava/lang/String; = "sview_cover_redial_call"

.field private static mEasyTouchModeEnabled:Z


# instance fields
.field private final AIRMOTION_SCALE_SIZE_SWEEP1:F

.field private final AIRMOTION_SCALE_SIZE_SWEEP2:F

.field private final AIR_MOTION_SWING_DURATION:I

.field private final AIR_MOTION_SWING_REPEATCOUNT:I

.field private final CHANGE_ARROW_DELAY:I

.field private final CHANGE_ARROW_MSG:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final REMOVE_AIRMOTION_SWEEP:I

.field private final REPEAT_ARROW_ANIMATION:I

.field private final REPEAT_ARROW_ANIMATION_DELAY:I

.field private final REPEAT_ARROW_ANIMATION_RESET_DELAY:I

.field private isMultiwindowChanged:Z

.field private mActivePointerId:I

.field private mAddExtraTouchArea:Z

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowAnimationIndex:I

.field private mArrowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mArrowContainer:Landroid/view/View;

.field private mArrowLeftAnimation:[I

.field private mArrowList:Landroid/widget/ImageView;

.field private mArrowRightAnimation:[I

.field private mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

.field private mContext:Landroid/content/Context;

.field private mCoverMode:Z

.field private mCurrentPointerId:I

.field private mEnableArrowAnimation:Z

.field private mHandleImageView:Landroid/widget/ImageView;

.field private mHandleImageViewForAnim:Landroid/widget/ImageView;

.field private mHandleImageViewLayout:Landroid/view/View;

.field private mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mInCallArrowContainer:Landroid/view/View;

.field private mInCallArrowList:Landroid/widget/ImageView;

.field private mInCallArrowRes:I

.field private mIsAnswerAnimating:Z

.field private mLeftArrowRes:I

.field private mLeftHandleImageRes:I

.field private mLeftTabNormalRes:I

.field private mLeftTabPressRes:I

.field private mLeftTargetMovinglRes:I

.field private mLeftTargetNormalRes:I

.field private mMovingCircle:Landroid/widget/ImageView;

.field private mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

.field mReachedRatio:D

.field mReachedRatioForArrow:D

.field private mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mRedialArrowContainer:Landroid/view/View;

.field private mRedialArrowList:Landroid/widget/ImageView;

.field private mRedialArrowRes:I

.field private mRightArrowRes:I

.field private mRightHandleImageRes:I

.field private mRightTabNormalRes:I

.field private mRightTabPressRes:I

.field private mRightTargetMovinglRes:I

.field private mRightTargetNormalRes:I

.field private mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTabCircle:Landroid/widget/ImageView;

.field private mTabCircleForAnim:Landroid/widget/ImageView;

.field private mTag:Ljava/lang/String;

.field private mTargetCircle:Landroid/widget/ImageView;

.field private mTouchAreaBottomExtra:I

.field private mTouchAreaLeftExtra:I

.field private mTouchAreaRightExtra:I

.field private mTouchAreaTopExtra:I

.field private mUseExternalArrowImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const v5, 0x7f0201c0

    const/4 v4, 0x3

    const/4 v3, -0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "IncomingCallImageHandle"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isMultiwindowChanged:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_MSG:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_DELAY:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION:I

    const/16 v0, 0x383

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_DELAY:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_RESET_DELAY:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    const v0, 0x7f0201bd

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    const v0, 0x7f0202e3

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    const v0, 0x7f02038f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    const v0, 0x7f02038f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    const v0, 0x7f02038d

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    const v0, 0x7f02038c

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    const v0, 0x7f020412

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    const v0, 0x7f020413

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    const v0, 0x7f020412

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    const v0, 0x7f02008f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_DURATION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_REPEATCOUNT:I

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    const v0, 0x3f4f5c29    # 0.81f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REMOVE_AIRMOTION_SWEEP:I

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    const-wide v0, 0x3feff7ced916872bL    # 0.999

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02041e
        0x7f02041f
        0x7f020420
    .end array-data

    :array_1
    .array-data 4
        0x7f02041a
        0x7f02041b
        0x7f02041c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6

    const v5, 0x7f0201c0

    const/4 v4, 0x3

    const/4 v3, -0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "IncomingCallImageHandle"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isMultiwindowChanged:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_MSG:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_DELAY:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION:I

    const/16 v0, 0x383

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_DELAY:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_RESET_DELAY:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    const v0, 0x7f0201bd

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    const v0, 0x7f0202e3

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    const v0, 0x7f02038f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    const v0, 0x7f02038f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    const v0, 0x7f02038d

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    const v0, 0x7f02038c

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    const v0, 0x7f020412

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    const v0, 0x7f020413

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    const v0, 0x7f020412

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    const v0, 0x7f02008f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_DURATION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_REPEATCOUNT:I

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    const v0, 0x3f4f5c29    # 0.81f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REMOVE_AIRMOTION_SWEEP:I

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    const-wide v0, 0x3feff7ced916872bL    # 0.999

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    iput-boolean p3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02041e
        0x7f02041f
        0x7f020420
    .end array-data

    :array_1
    .array-data 4
        0x7f02041a
        0x7f02041b
        0x7f02041c
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForArrowContainer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForRedialArrowContainer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForInCallArrowContainer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return p1
.end method

.method static synthetic access$908(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method private declared-synchronized animateForArrowContainer()V
    .locals 11

    const/4 v10, 0x2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateForArrowContainer..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isMultiwindowChanged:Z

    if-eqz v2, :cond_2

    div-int/lit8 v2, v1, 0x5

    add-int/2addr v1, v2

    :cond_2
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v2, v10, :cond_5

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v9, v10, :cond_3

    neg-float v0, v0

    :cond_3
    aput v0, v7, v8

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/b/a/f;

    invoke-direct {v2}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private animateForInCallArrowContainer()V
    .locals 11

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->initInCallArrow()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateForRedialArrowContainer..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    aput v9, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v8, [F

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    :goto_1
    aput v0, v7, v10

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/b/a/f;

    invoke-direct {v2}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$7;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$7;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_3
    neg-float v0, v0

    goto :goto_1
.end method

.method private animateForRedialArrowContainer()V
    .locals 11

    const/4 v9, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->initRedialArrow()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateForRedialArrowContainer..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    :goto_1
    aput v0, v7, v10

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/b/a/f;

    invoke-direct {v2}, Lcom/samsung/android/b/a/f;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_3
    neg-float v0, v0

    goto :goto_1
.end method

.method private animateForTargetCircle(Z)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v10, 0x1

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreviousHandleState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHandleState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_2

    move v0, v9

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_3

    move v0, v9

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_4

    move v0, v9

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_5

    move v0, v9

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_6

    move v0, v9

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    if-nez v0, :cond_7

    move v0, v9

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    :cond_8
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    if-eqz p1, :cond_a

    move v1, v4

    :goto_1
    if-eqz p1, :cond_b

    move v2, v7

    :goto_2
    if-eqz p1, :cond_c

    move v3, v4

    :goto_3
    if-eqz p1, :cond_9

    move v4, v7

    :cond_9
    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_d

    move v0, v8

    :goto_4
    if-eqz p1, :cond_e

    :goto_5
    invoke-direct {v1, v0, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v11, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    const v1, 0x10a0006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v9}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v11}, Lcom/android/incallui/widget/SecClearCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_6
    move v0, v10

    goto/16 :goto_0

    :cond_a
    move v1, v7

    goto :goto_1

    :cond_b
    move v2, v4

    goto :goto_2

    :cond_c
    move v3, v7

    goto :goto_3

    :cond_d
    move v0, v7

    goto :goto_4

    :cond_e
    move v7, v8

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6
.end method

.method private assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p5, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method private clearInCallDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private clearRedialDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static getEasyTouchModeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    return v0
.end method

.method private handleEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    :cond_1
    :pswitch_3
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->processForActive()V

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->processMoveEvent(Landroid/view/MotionEvent;)V

    move v0, v1

    goto :goto_0

    :pswitch_5
    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->processForNormal()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private init()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    if-eqz v2, :cond_5

    if-ne v1, v5, :cond_5

    const v2, 0x7f0400f9

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const v0, 0x7f100327

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const v0, 0x7f100325

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f100328

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewLayout:Landroid/view/View;

    const v0, 0x7f100329

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v0, 0x7f100326

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/SecClearCircleImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v6}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    if-eqz v0, :cond_1

    if-ne v1, v7, :cond_1

    const v0, 0x7f0200bf

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    const v0, 0x7f0200c0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    const v0, 0x7f0200c3

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    const v0, 0x7f020416

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    const v0, 0x7f0200c1

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    const v0, 0x7f0200c2

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    const v0, 0x7f0200c9

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    const v0, 0x7f0200d0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    const v0, 0x7f0200cf

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    const v0, 0x7f0200d0

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    const v0, 0x7f0200cf

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    const v0, 0x7f0200c4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    const v0, 0x7f0200ca

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getClearCoverColor()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    const-string v0, "show_vowifi_incomingcall_button"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020112

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewLayout:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewLayout:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$3;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "support_incoming_call_widget_clear_flick_effect"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f100331

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    const v0, 0x7f100332

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    return-void

    :cond_5
    const v2, 0x7f0400f8

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x7f0200c8

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    const v0, 0x7f0200ce

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    :pswitch_2
    const v0, 0x7f0200c4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    const v0, 0x7f0200ca

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    :pswitch_3
    const v0, 0x7f0200c5

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    const v0, 0x7f0200cb

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    :pswitch_4
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    const v0, 0x7f0200cd

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    :pswitch_5
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    const v0, 0x7f0200cc

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "support_incoming_call_widget_clear_flick_effect"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageResource(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f100331

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    const v0, 0x7f100332

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "support_incoming_call_widget_clear_flick_effect"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageResource(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f10032f

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    const v0, 0x7f100330

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f100333

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    const v0, 0x7f100334

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private initInCallArrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f100333

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    const v0, 0x7f100334

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private initRedialArrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f100335

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    const v0, 0x7f100336

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private notifyTargetProximityRatio(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->notifyTargetProximityRatio(F)V

    :cond_0
    return-void
.end method

.method private setViewStatePostAnimation(Landroid/view/View;F)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showDefaultArrowHandleInternal()V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/16 v5, 0x65

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showTarget(F)V
    .locals 11

    const/16 v10, 0x61

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const v1, 0x3e99999a    # 0.3f

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v2

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v2

    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v2, p1

    move v3, v1

    move v4, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    const v1, 0x10a0006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v7, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v7}, Lcom/android/incallui/widget/SecClearCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v10}, Lcom/android/incallui/widget/SecClearCircleImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v8}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMovingCircle(FF)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMovingCircle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    const-string v2, "support_clear_inner_circle_widget"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    double-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method


# virtual methods
.method public addExtraTouchArea()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    return-void
.end method

.method public addTouchArea(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    iput p3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    iput p4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    return-void
.end method

.method public animateTabCircleForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 11

    const v0, 0x7f10032a

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const v0, 0x7f10032b

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->hideArrowHandleInternal()V

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/b/a/c;

    invoke-direct {v6}, Lcom/samsung/android/b/a/c;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/samsung/android/b/a/g;

    invoke-direct {v10}, Lcom/samsung/android/b/a/g;-><init>()V

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const v1, 0x7f020218

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v6, Lcom/samsung/android/b/a/c;

    invoke-direct {v6}, Lcom/samsung/android/b/a/c;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V

    const-string v0, "show_vowifi_endcall_button"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f020066

    const-string v1, "spr_vowifi_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f020329

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    const/high16 v9, 0x3f800000    # 1.0f

    new-instance v10, Lcom/samsung/android/b/a/g;

    invoke-direct {v10}, Lcom/samsung/android/b/a/g;-><init>()V

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    const v1, 0x7f0202e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public clearDrawable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearRedialDrawable()V

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearInCallDrawable()V

    return-void
.end method

.method public enableArrowAnimation(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableArrowAnimation: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    return-void
.end method

.method public getHandleState()Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    return-object v0
.end method

.method public getHandleType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    return v0
.end method

.method public getTabCircle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTabCircleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTargetProximityRatio(FF)D
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const-string v3, "support_clear_inner_circle_widget"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-float v1, v1

    sub-float v1, p2, v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public hideArrowHandleInternal()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    return-void
.end method

.method public isInTabCircle(Landroid/view/MotionEvent;)Z
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "accessibility"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v3, v1, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Lcom/android/incallui/UiAdapter;->isInExceptionArea(II)Z

    move-result v1

    :goto_0
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v7, v4, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v6, v4, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v4, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x5

    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    const-string v12, "support_clear_inner_circle_widget"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v8}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v8}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    new-instance v14, Landroid/graphics/Rect;

    sub-int v15, v9, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int v7, v15, v7

    sub-int/2addr v7, v3

    sub-int v15, v8, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int v5, v15, v5

    sub-int/2addr v5, v2

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    add-int/2addr v9, v12

    add-int/2addr v6, v9

    add-int/2addr v3, v6

    add-int v6, v8, v13

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    invoke-direct {v14, v7, v5, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v2, v10

    float-to-int v3, v11

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move v1, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_0
.end method

.method public isThresholdReached(FF)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IncomingCallImageHandle"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needToHideArrow(FF)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "onFinishInflate"

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHoverEvent : event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-boolean v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, " on intercept touch "

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, " tts n easy mode is on "

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent : event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public processForActive()V
    .locals 4

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->vibrate(J)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    return-void
.end method

.method public processForNormal()V
    .locals 2

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    return-void
.end method

.method public processForOnTriggered()V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isThresholdReached(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    if-eq v0, v1, :cond_0

    const-string v0, "mCurrentPointerId different from mActivePointerId ==> return"

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->processForOnTriggered()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->notifyTargetProximityRatio(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->needToHideArrow(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->hideArrowHandleInternal()V

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateMovingCircle(FF)V

    goto :goto_0
.end method

.method public removeArrowMsg()V
    .locals 3

    const/16 v2, 0x65

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_4
    return-void
.end method

.method public resetConversionAnimator()V
    .locals 6

    const/16 v5, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAlphaForDeactive(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public setEasyTouchModeEnabled(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    return-void
.end method

.method public setHandleImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    return-void
.end method

.method public setHandleType(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    return-void
.end method

.method public setLeftHandleArrowResource(I)V
    .locals 2

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public setLeftTabImageResource(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    return-void
.end method

.method public setMultiwindowChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isMultiwindowChanged:Z

    return-void
.end method

.method public setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    return-void
.end method

.method public setReachedRatio(D)V
    .locals 1

    iput-wide p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    return-void
.end method

.method public setRightHandleArrowResource(I)V
    .locals 2

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setRightTabImageResource(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    return-void
.end method

.method public setTabImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTargetImageResource(I)V
    .locals 1

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setUseExternalArrowImage(Z)V
    .locals 2

    const/4 v1, 0x4

    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setWidgetTypeTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    return-void
.end method

.method public updateArrowHandle()V
    .locals 7

    const/16 v6, 0x65

    const/16 v5, 0x64

    const/4 v4, 0x4

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$8;->$SwitchMap$com$android$incallui$widget$incomingwidget$IncomingCallImageHandle$HandleState:[I

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->showDefaultArrowHandleInternal()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateHandle()V
    .locals 7

    const/16 v6, 0x12c

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$8;->$SwitchMap$com$android$incallui$widget$incomingwidget$IncomingCallImageHandle$HandleState:[I

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateArrowHandle()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->notifyTargetProximityRatio(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForTargetCircle(Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    :goto_3
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    :cond_4
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    :goto_4
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForTargetCircle(Z)Z

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    const v0, 0x3f266666    # 0.65f

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->showTarget(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x3f4f5c29    # 0.81f

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->showTarget(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
