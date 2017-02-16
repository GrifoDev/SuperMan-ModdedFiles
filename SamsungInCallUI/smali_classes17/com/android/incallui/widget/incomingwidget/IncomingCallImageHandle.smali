.class public Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageHandle.java"


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

.field private mDuringSwingAnimation:Z

.field private mEnableArrowAnimation:Z

.field private mHandleImageView:Landroid/widget/ImageView;

.field private mHandleImageViewForAnim:Landroid/widget/ImageView;

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

    .prologue
    .line 169
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handleType"    # I

    .prologue
    const v5, 0x7f02014b

    const/4 v4, 0x3

    const/4 v3, -0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 281
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const-string v0, "IncomingCallImageHandle"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->LOG_TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    .line 116
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    .line 118
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isMultiwindowChanged:Z

    .line 120
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_MSG:I

    .line 121
    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_DELAY:I

    .line 123
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION:I

    .line 124
    const/16 v0, 0x383

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_DELAY:I

    .line 125
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_RESET_DELAY:I

    .line 127
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    .line 129
    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    .line 130
    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    .line 131
    const v0, 0x7f020148

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    .line 132
    const v0, 0x7f02014d

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    .line 133
    const v0, 0x7f02025c

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    .line 135
    const v0, 0x7f0202df

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    .line 136
    const v0, 0x7f0202df

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    .line 137
    const v0, 0x7f0202dd

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    .line 138
    const v0, 0x7f0202dc

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    .line 139
    const v0, 0x7f02025d

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    .line 141
    const v0, 0x7f020351

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    .line 142
    const v0, 0x7f020352

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    .line 143
    const v0, 0x7f020351

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    .line 144
    const v0, 0x7f020080

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    .line 149
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    .line 154
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    .line 159
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    .line 161
    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_DURATION:I

    .line 162
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_REPEATCOUNT:I

    .line 163
    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    .line 164
    const v0, 0x3f4f5c29    # 0.81f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    .line 165
    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REMOVE_AIRMOTION_SWEEP:I

    .line 166
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z

    .line 171
    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    .line 172
    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    .line 202
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    .line 277
    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    .line 278
    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    .line 967
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    .line 1011
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    .line 1012
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    .line 1013
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    .line 1014
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    .line 1023
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    .line 1085
    const-wide v0, 0x3feff7ced916872bL    # 0.999

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    .line 282
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    .line 283
    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    .line 284
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->init()V

    .line 285
    return-void

    .line 149
    nop

    :array_0
    .array-data 4
        0x7f02035c
        0x7f02035d
        0x7f02035e
    .end array-data

    .line 154
    :array_1
    .array-data 4
        0x7f020358
        0x7f020359
        0x7f02035a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handleType"    # I
    .param p3, "coverMode"    # Z

    .prologue
    const v5, 0x7f02014b

    const/4 v4, 0x3

    const/4 v3, -0x1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const-string v0, "IncomingCallImageHandle"

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->LOG_TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    .line 116
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    .line 118
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isMultiwindowChanged:Z

    .line 120
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_MSG:I

    .line 121
    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_DELAY:I

    .line 123
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION:I

    .line 124
    const/16 v0, 0x383

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_DELAY:I

    .line 125
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_RESET_DELAY:I

    .line 127
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    .line 129
    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    .line 130
    iput v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    .line 131
    const v0, 0x7f020148

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    .line 132
    const v0, 0x7f02014d

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    .line 133
    const v0, 0x7f02025c

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    .line 135
    const v0, 0x7f0202df

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    .line 136
    const v0, 0x7f0202df

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    .line 137
    const v0, 0x7f0202dd

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    .line 138
    const v0, 0x7f0202dc

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    .line 139
    const v0, 0x7f02025d

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    .line 141
    const v0, 0x7f020351

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    .line 142
    const v0, 0x7f020352

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    .line 143
    const v0, 0x7f020351

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    .line 144
    const v0, 0x7f020080

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    .line 149
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    .line 154
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    .line 159
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    .line 161
    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_DURATION:I

    .line 162
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_REPEATCOUNT:I

    .line 163
    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    .line 164
    const v0, 0x3f4f5c29    # 0.81f

    iput v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    .line 165
    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->REMOVE_AIRMOTION_SWEEP:I

    .line 166
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z

    .line 171
    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    .line 172
    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    .line 202
    new-instance v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    .line 277
    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    .line 278
    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    .line 967
    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    .line 1011
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    .line 1012
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    .line 1013
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    .line 1014
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    .line 1023
    iput-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    .line 1085
    const-wide v0, 0x3feff7ced916872bL    # 0.999

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    .line 289
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    .line 290
    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    .line 291
    iput-boolean p3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    .line 292
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->init()V

    .line 293
    return-void

    .line 149
    nop

    :array_0
    .array-data 4
        0x7f02035c
        0x7f02035d
        0x7f02035e
    .end array-data

    .line 154
    :array_1
    .array-data 4
        0x7f020358
        0x7f020359
        0x7f02035a
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForArrowContainer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForRedialArrowContainer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForInCallArrowContainer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return p1
.end method

.method static synthetic access$908(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method private declared-synchronized animateForArrowContainer()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 1242
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    .line 1294
    :goto_0
    monitor-exit p0

    return-void

    .line 1243
    :cond_0
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "animateForArrowContainer..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 1245
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1246
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->end()V

    .line 1249
    :cond_1
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1250
    .local v3, "arrowContainerLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0463

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v4, v9

    .line 1251
    .local v4, "arrowContainerMargin":I
    iget-boolean v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isMultiwindowChanged:Z

    if-eqz v9, :cond_2

    .line 1252
    div-int/lit8 v9, v4, 0x5

    add-int/2addr v4, v9

    .line 1255
    :cond_2
    iget v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v9, v14, :cond_5

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1257
    :goto_1
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1261
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 1262
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v9, :cond_4

    .line 1265
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1267
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0464

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 1269
    .local v8, "moveDistance":F
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1270
    .local v1, "alphaInDuration":I
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0031

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1271
    .local v6, "arrowOutDuration":I
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0033

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1273
    .local v5, "arrowDuration":I
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1274
    .local v0, "alphaInAnimator":Landroid/animation/ObjectAnimator;
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1276
    .local v2, "alphaOutAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v10, v1

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1277
    int-to-long v10, v6

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v10, v5

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1279
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v13, v14, :cond_3

    neg-float v8, v8

    .end local v8    # "moveDistance":F
    :cond_3
    aput v8, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1280
    .local v7, "moveAnimator":Landroid/animation/Animator;
    int-to-long v10, v5

    invoke-virtual {v7, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    int-to-long v10, v1

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1281
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v10}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1282
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1283
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;

    invoke-direct {v10, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$4;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1293
    .end local v0    # "alphaInAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaInDuration":I
    .end local v2    # "alphaOutAnimator":Landroid/animation/ObjectAnimator;
    .end local v5    # "arrowDuration":I
    .end local v6    # "arrowOutDuration":I
    .end local v7    # "moveAnimator":Landroid/animation/Animator;
    :cond_4
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1242
    .end local v3    # "arrowContainerLP":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "arrowContainerMargin":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1256
    .restart local v3    # "arrowContainerLP":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "arrowContainerMargin":I
    :cond_5
    :try_start_2
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private animateForInCallArrowContainer()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 1343
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->initInCallArrow()V

    .line 1345
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-nez v7, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1346
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animateForRedialArrowContainer..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 1348
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1349
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->end()V

    .line 1352
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1353
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1356
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v7, :cond_2

    .line 1357
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1359
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0464

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 1361
    .local v6, "moveDistance":F
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0032

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1362
    .local v1, "alphaInDuration":I
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1363
    .local v4, "arrowOutDuration":I
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1365
    .local v3, "arrowDuration":I
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v10, [F

    aput v13, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1366
    .local v0, "alphaInAnimator":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v10, [F

    aput v11, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1368
    .local v2, "alphaOutAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1369
    int-to-long v8, v4

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1371
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v10, [F

    iget v10, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .end local v6    # "moveDistance":F
    :goto_1
    aput v6, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1372
    .local v5, "moveAnimator":Landroid/animation/Animator;
    int-to-long v8, v3

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1373
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v8}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1374
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1375
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;

    invoke-direct {v8, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$6;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1385
    .end local v0    # "alphaInAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaInDuration":I
    .end local v2    # "alphaOutAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "arrowDuration":I
    .end local v4    # "arrowOutDuration":I
    .end local v5    # "moveAnimator":Landroid/animation/Animator;
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1371
    .restart local v0    # "alphaInAnimator":Landroid/animation/ObjectAnimator;
    .restart local v1    # "alphaInDuration":I
    .restart local v2    # "alphaOutAnimator":Landroid/animation/ObjectAnimator;
    .restart local v3    # "arrowDuration":I
    .restart local v4    # "arrowOutDuration":I
    .restart local v6    # "moveDistance":F
    :cond_3
    neg-float v6, v6

    goto :goto_1
.end method

.method private animateForRedialArrowContainer()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 1297
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->initRedialArrow()V

    .line 1299
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-nez v7, :cond_0

    .line 1340
    :goto_0
    return-void

    .line 1300
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animateForRedialArrowContainer..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 1302
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1303
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->end()V

    .line 1306
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1307
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    .line 1310
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v7, :cond_2

    .line 1311
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1313
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0464

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 1315
    .local v6, "moveDistance":F
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0032

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1316
    .local v1, "alphaInDuration":I
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1317
    .local v4, "arrowOutDuration":I
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1319
    .local v3, "arrowDuration":I
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v11, [F

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1320
    .local v0, "alphaInAnimator":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v11, [F

    const/4 v10, 0x0

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1322
    .local v2, "alphaOutAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1323
    int-to-long v8, v4

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1325
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v11, [F

    iget v10, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .end local v6    # "moveDistance":F
    :goto_1
    aput v6, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1326
    .local v5, "moveAnimator":Landroid/animation/Animator;
    int-to-long v8, v3

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1327
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v8}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1328
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1329
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;

    invoke-direct {v8, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$5;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1339
    .end local v0    # "alphaInAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "alphaInDuration":I
    .end local v2    # "alphaOutAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "arrowDuration":I
    .end local v4    # "arrowOutDuration":I
    .end local v5    # "moveAnimator":Landroid/animation/Animator;
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1325
    .restart local v0    # "alphaInAnimator":Landroid/animation/ObjectAnimator;
    .restart local v1    # "alphaInDuration":I
    .restart local v2    # "alphaOutAnimator":Landroid/animation/ObjectAnimator;
    .restart local v3    # "arrowDuration":I
    .restart local v4    # "arrowOutDuration":I
    .restart local v6    # "moveDistance":F
    :cond_3
    neg-float v6, v6

    goto :goto_1
.end method

.method private animateForTargetCircle(Z)Z
    .locals 13
    .param p1, "active"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviousHandleState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHandleState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v11

    .line 678
    :goto_0
    return v1

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_2

    move v1, v11

    goto :goto_0

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_3

    move v1, v11

    goto :goto_0

    .line 644
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_4

    move v1, v11

    goto :goto_0

    .line 645
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_5

    move v1, v11

    goto :goto_0

    .line 646
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_6

    move v1, v11

    goto :goto_0

    .line 648
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v5, v1, v2

    .line 649
    .local v5, "targetPivot":F
    const-string v1, "support_clear_inner_circle_widget"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 650
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    if-nez v1, :cond_7

    move v1, v11

    goto :goto_0

    .line 651
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v5, v1, v2

    .line 653
    :cond_8
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 654
    .local v8, "makeTargetAniSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    if-eqz p1, :cond_a

    move v1, v4

    :goto_1
    if-eqz p1, :cond_b

    move v2, v9

    :goto_2
    if-eqz p1, :cond_c

    move v3, v4

    :goto_3
    if-eqz p1, :cond_9

    move v4, v9

    :cond_9
    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 660
    .local v0, "scaleAni":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 661
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_d

    move v1, v10

    :goto_4
    if-eqz p1, :cond_e

    :goto_5
    invoke-direct {v7, v1, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 662
    .local v7, "alphaAni":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 663
    const-wide/16 v2, 0x12c

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 664
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 666
    invoke-virtual {v8, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 668
    const-string v1, "support_clear_inner_circle_widget"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 669
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearAnimation()V

    .line 670
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1, v11}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    .line 671
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1, v8}, Lcom/android/incallui/widget/SecClearCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_6
    move v1, v12

    .line 678
    goto/16 :goto_0

    .end local v0    # "scaleAni":Landroid/view/animation/ScaleAnimation;
    .end local v7    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    :cond_a
    move v1, v9

    .line 654
    goto :goto_1

    :cond_b
    move v2, v4

    goto :goto_2

    :cond_c
    move v3, v9

    goto :goto_3

    .restart local v0    # "scaleAni":Landroid/view/animation/ScaleAnimation;
    :cond_d
    move v1, v9

    .line 661
    goto :goto_4

    :cond_e
    move v9, v10

    goto :goto_5

    .line 673
    .restart local v7    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    :cond_f
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 674
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6
.end method

.method private assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "builder"    # Landroid/animation/AnimatorSet$Builder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "startDelay"    # I
    .param p5, "endOpacity"    # F
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1495
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 1497
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1498
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1500
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p5, v2, v3

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1501
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1502
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1503
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1504
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method private assignAlphaAnimation(Landroid/view/View;IF)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "endOpacity"    # F

    .prologue
    .line 1508
    if-nez p1, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1509
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 1510
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1511
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1513
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1514
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1515
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1516
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1517
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private clearInCallDrawable()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    :cond_0
    return-void
.end method

.method private clearRedialDrawable()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    :cond_0
    return-void
.end method

.method public static getEasyTouchModeEnabled()Z
    .locals 1

    .prologue
    .line 1173
    sget-boolean v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    return v0
.end method

.method private handleEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 496
    .local v0, "action":I
    const/4 v1, 0x0

    .line 497
    .local v1, "retValue":Z
    packed-switch v0, :pswitch_data_0

    .line 548
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 499
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    .line 502
    :pswitch_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    if-eqz v2, :cond_1

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    .line 510
    :cond_1
    :pswitch_3
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 512
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->vibrate(J)V

    .line 513
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    .line 514
    const/4 v1, 0x1

    goto :goto_0

    .line 520
    :pswitch_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    .line 521
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->processMoveEvent(Landroid/view/MotionEvent;)V

    .line 523
    const/4 v1, 0x1

    goto :goto_0

    .line 532
    :pswitch_5
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    .line 533
    iput v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    .line 534
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    .line 535
    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 536
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    .line 537
    const/4 v1, 0x1

    goto :goto_0

    .line 497
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
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 300
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    .line 301
    .local v1, "coverType":I
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 302
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    if-eqz v3, :cond_5

    if-ne v1, v4, :cond_5

    .line 303
    const v3, 0x7f0400e0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 308
    :goto_0
    const v3, 0x7f10029c

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    .line 309
    const v3, 0x7f10029a

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    .line 310
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    const v3, 0x7f10029d

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    .line 312
    const v3, 0x7f10029b

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    .line 313
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    const-string v3, "support_clear_inner_circle_widget"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    const v3, 0x7f1002a0

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/widget/SecClearCircleImageView;

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    .line 319
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v3, v7}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    .line 322
    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    if-eqz v3, :cond_6

    .line 323
    if-ne v1, v8, :cond_1

    .line 324
    const v3, 0x7f02009b

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    .line 325
    const v3, 0x7f02009c

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    .line 326
    const v3, 0x7f02009f

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    .line 327
    const v3, 0x7f02025c

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    .line 329
    const v3, 0x7f02009d

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    .line 330
    const v3, 0x7f02009e

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    .line 331
    const v3, 0x7f0200a5

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    .line 332
    const v3, 0x7f02025d

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    .line 334
    const v3, 0x7f0200ac

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    .line 335
    const v3, 0x7f0200ab

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    .line 336
    const v3, 0x7f0200ac

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    .line 337
    const v3, 0x7f0200ab

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    .line 340
    const v3, 0x7f0200a0

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    .line 341
    const v3, 0x7f0200a6

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    .line 343
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getClearCoverColor()I

    move-result v0

    .line 344
    .local v0, "coverColor":I
    packed-switch v0, :pswitch_data_0

    .line 375
    .end local v0    # "coverColor":I
    :cond_1
    :goto_1
    :pswitch_0
    const-string v3, "show_vowifi_incomingcall_button"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    const v3, 0x7f0200c2

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    .line 380
    :cond_2
    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v3, v4, :cond_7

    .line 381
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    const-string v3, "support_incoming_call_widget_clear_flick_effect"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 385
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    :cond_3
    const-string v3, "support_clear_inner_circle_widget"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 388
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageResource(I)V

    .line 392
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    const v3, 0x7f1002a5

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    .line 394
    const v3, 0x7f1002a6

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    .line 395
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 440
    :goto_2
    new-instance v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$2;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 453
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    .line 454
    return-void

    .line 305
    :cond_5
    const v3, 0x7f0400df

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 346
    .restart local v0    # "coverColor":I
    :pswitch_1
    const v3, 0x7f0200a4

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    .line 347
    const v3, 0x7f0200aa

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    .line 350
    :pswitch_2
    const v3, 0x7f0200a0

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    .line 351
    const v3, 0x7f0200a6

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    .line 354
    :pswitch_3
    const v3, 0x7f0200a1

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    .line 355
    const v3, 0x7f0200a7

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    .line 358
    :pswitch_4
    const v3, 0x7f0200a3

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    .line 359
    const v3, 0x7f0200a9

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    .line 362
    :pswitch_5
    const v3, 0x7f0200a2

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    .line 363
    const v3, 0x7f0200a8

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    goto/16 :goto_1

    .line 368
    .end local v0    # "coverColor":I
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    sget v3, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isEnoughSpaceForAnswer()Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    const v3, 0x7f020257

    iput v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    goto/16 :goto_1

    .line 398
    :cond_7
    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    .line 399
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 400
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 401
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    const-string v3, "support_incoming_call_widget_clear_flick_effect"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 403
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetMovinglRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    :cond_8
    const-string v3, "support_clear_inner_circle_widget"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 406
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageResource(I)V

    .line 410
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v4, 0x7f020257

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    const v3, 0x7f1002a5

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    .line 412
    const v3, 0x7f1002a6

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    .line 413
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    .line 416
    :cond_a
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    const-string v3, "support_incoming_call_widget_clear_flick_effect"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 420
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetMovinglRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    :cond_b
    const-string v3, "support_clear_inner_circle_widget"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 423
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageResource(I)V

    .line 427
    :cond_c
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 428
    const v3, 0x7f1002a3

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    .line 429
    const v3, 0x7f1002a4

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    .line 430
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 433
    const v3, 0x7f1002a7

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    .line 434
    const v3, 0x7f1002a8

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    .line 435
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_2

    .line 344
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

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 473
    const v0, 0x7f1002a7

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    .line 474
    const v0, 0x7f1002a8

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    .line 475
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 476
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 478
    :cond_0
    return-void
.end method

.method private initRedialArrow()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 458
    const v0, 0x7f1002a9

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    .line 459
    const v0, 0x7f1002aa

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    .line 460
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 463
    :cond_0
    return-void
.end method

.method private notifyTargetProximityRatio(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_0

    .line 976
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v2

    double-to-float v0, v2

    .line 977
    .local v0, "ratio":F
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->notifyTargetProximityRatio(F)V

    .line 979
    .end local v0    # "ratio":F
    :cond_0
    return-void
.end method

.method private setViewStatePostAnimation(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "opacity"    # F

    .prologue
    .line 1521
    if-nez p1, :cond_0

    .line 1528
    :goto_0
    return-void

    .line 1522
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1524
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1525
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1527
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showDefaultArrowHandleInternal()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/16 v5, 0x65

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 823
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    if-eqz v1, :cond_5

    .line 824
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 825
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 851
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    :goto_0
    return-void

    .line 826
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 827
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 828
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 830
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 831
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 832
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 836
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowList:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 837
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 838
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 842
    :cond_4
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 850
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showTarget(F)V
    .locals 12
    .param p1, "scale_size"    # F

    .prologue
    const/16 v11, 0x61

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const v1, 0x3e99999a    # 0.3f

    .line 1177
    iget-boolean v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v2, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1178
    :cond_0
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1180
    .local v8, "aniSet":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v5, v2, v3

    .line 1181
    .local v5, "pivot":F
    const-string v2, "support_clear_inner_circle_widget"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1182
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v5, v2, v3

    .line 1184
    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v2, p1

    move v3, v1

    move v4, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1186
    .local v0, "scaleAni":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1188
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1189
    .local v7, "alphaAni":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1191
    const-wide/16 v2, 0x12c

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1192
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1194
    invoke-virtual {v8, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1196
    const-string v1, "support_clear_inner_circle_widget"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1197
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1, v8}, Lcom/android/incallui/widget/SecClearCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1198
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1, v11}, Lcom/android/incallui/widget/SecClearCircleImageView;->setAlpha(I)V

    .line 1199
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1, v9}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    goto :goto_0

    .line 1201
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1202
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1203
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMovingCircle(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 991
    iget-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v1, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMovingCircle : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 993
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v4, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v4, :cond_0

    .line 994
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v2

    .line 995
    .local v2, "ratio":D
    const-string v1, "support_clear_inner_circle_widget"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 996
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 997
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    .line 999
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    double-to-float v4, v2

    mul-float v0, v1, v4

    .line 1000
    .local v0, "diameter":F
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    goto :goto_0

    .line 1002
    .end local v0    # "diameter":F
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1003
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1005
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1006
    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method


# virtual methods
.method public addExtraTouchArea()V
    .locals 2

    .prologue
    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    .line 1027
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    .line 1028
    return-void
.end method

.method public addTouchArea(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1017
    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    .line 1018
    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    .line 1019
    iput p3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    .line 1020
    iput p4, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    .line 1021
    return-void
.end method

.method public animateTabCircleForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 13
    .param p1, "builder"    # Landroid/animation/AnimatorSet$Builder;

    .prologue
    .line 1425
    const v0, 0x7f10029e

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    .line 1426
    const v0, 0x7f10029f

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    .line 1427
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    .line 1430
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->hideArrowHandleInternal()V

    .line 1431
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1432
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    if-eqz v0, :cond_2

    .line 1433
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearAnimation()V

    .line 1434
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    .line 1445
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1446
    .local v3, "colorDuration":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1448
    .local v7, "alphaDuration":I
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1449
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/view/animation/SineIn33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineIn33;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V

    .line 1451
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1452
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v10}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V

    .line 1455
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1456
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    .line 1458
    .local v11, "length":I
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1459
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1461
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1462
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1463
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v6, Lcom/samsung/android/view/animation/SineIn33;

    invoke-direct {v6}, Lcom/samsung/android/view/animation/SineIn33;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V

    .line 1465
    const-string v0, "show_vowifi_endcall_button"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1466
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1467
    const v12, 0x7f020054

    .line 1468
    .local v12, "resId":I
    const-string v0, "spr_vowifi_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1469
    const v12, 0x7f0202a2

    .line 1471
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1476
    .end local v12    # "resId":I
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1477
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1479
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1480
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1481
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 1482
    .local v8, "alphaDelay":I
    iget-object v6, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    const/high16 v9, 0x3f800000    # 1.0f

    new-instance v10, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v10}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/animation/AnimatorSet$Builder;Landroid/view/View;IIFLandroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 1437
    .end local v3    # "colorDuration":I
    .end local v7    # "alphaDuration":I
    .end local v8    # "alphaDelay":I
    .end local v11    # "length":I
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1438
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1439
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1441
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1442
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1473
    .restart local v3    # "colorDuration":I
    .restart local v7    # "alphaDuration":I
    .restart local v11    # "length":I
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    const v1, 0x7f02025b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public clearDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1208
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1210
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1217
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1223
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1225
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1226
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1228
    :cond_5
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1229
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    if-eqz v0, :cond_6

    .line 1230
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearRedialDrawable()V

    .line 1234
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->clearInCallDrawable()V

    .line 1235
    return-void
.end method

.method public enableArrowAnimation(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 800
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

    .line 801
    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    .line 802
    return-void
.end method

.method public getHandleState()Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    return-object v0
.end method

.method public getHandleType()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    return v0
.end method

.method public getTabCircle()Landroid/view/View;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTabCircleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTargetProximityRatio(FF)D
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1097
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    .line 1098
    .local v4, "pivotX":I
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    .line 1099
    .local v5, "pivotY":I
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v8, v9, 0x2

    .line 1100
    .local v8, "radius":I
    const-string v9, "support_clear_inner_circle_widget"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1101
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v9}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    .line 1102
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v9}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    .line 1103
    iget-object v9, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v9}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v8, v9, 0x2

    .line 1106
    :cond_0
    int-to-float v9, v4

    sub-float v9, p1, v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1107
    .local v0, "dx":D
    int-to-float v9, v5

    sub-float v9, p2, v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 1109
    .local v2, "dy":D
    mul-double v10, v0, v0

    mul-double v12, v2, v2

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1111
    .local v6, "posLength":D
    int-to-double v10, v8

    div-double v10, v6, v10

    return-wide v10
.end method

.method public hideArrowHandleInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 805
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 816
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    .line 820
    return-void
.end method

.method public isInTabCircle(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1032
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1034
    .local v18, "y":F
    const/4 v5, 0x0

    .line 1035
    .local v5, "accessbilityWidthExtra":I
    const/4 v4, 0x0

    .line 1036
    .local v4, "accessbilityHeightExtra":I
    const/4 v11, 0x0

    .line 1040
    .local v11, "isInExceptionArea":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "accessibility"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 1041
    .local v6, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v5, v19, 0x2

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v4, v19, 0x2

    .line 1044
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/incallui/UiAdapter;->isInExceptionArea(II)Z

    move-result v11

    .line 1047
    :cond_0
    const/4 v8, 0x0

    .line 1048
    .local v8, "internalTouchAreaLeftExtra":I
    const/4 v9, 0x0

    .line 1049
    .local v9, "internalTouchAreaRightExtra":I
    const/4 v10, 0x0

    .line 1050
    .local v10, "internalTouchAreaTopExtra":I
    const/4 v7, 0x0

    .line 1052
    .local v7, "internalTouchAreaBottomExtra":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    div-int/lit8 v8, v19, 0x5

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    div-int/lit8 v9, v19, 0x5

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    div-int/lit8 v10, v19, 0x5

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    div-int/lit8 v7, v19, 0x5

    .line 1059
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v16, v19, 0x2

    .line 1060
    .local v16, "targetHalfWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v15, v19, 0x2

    .line 1061
    .local v15, "targetHalfHeight":I
    const-string v19, "support_clear_inner_circle_widget"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v16, v19, 0x2

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v15, v19, 0x2

    .line 1065
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v13, v19, 0x2

    .line 1066
    .local v13, "tabHalfWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v12, v19, 0x2

    .line 1068
    .local v12, "tabHalfHeight":I
    new-instance v14, Landroid/graphics/Rect;

    sub-int v19, v16, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v19, v19, v8

    sub-int v19, v19, v5

    sub-int v20, v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v10

    sub-int v20, v20, v4

    add-int v21, v16, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v9

    add-int v21, v21, v5

    add-int v22, v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v22, v22, v7

    add-int v22, v22, v4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1075
    .local v14, "tabRect":Landroid/graphics/Rect;
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v19

    if-eqz v19, :cond_3

    if-nez v11, :cond_3

    const/16 v19, 0x1

    :goto_0
    return v19

    :cond_3
    const/16 v19, 0x0

    goto :goto_0
.end method

.method public isThresholdReached(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 1082
    .local v0, "ratio":D
    iget-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1531
    const-string v0, "IncomingCallImageHandle"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    return-void
.end method

.method public needToHideArrow(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 970
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    .line 971
    .local v0, "ratio":D
    iget-wide v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 490
    const-string v0, "onFinishInflate"

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 574
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

    .line 596
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-boolean v0, v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 597
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 599
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 615
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 554
    const-string v1, " on intercept touch "

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 556
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    if-eqz v1, :cond_0

    .line 559
    const-string v1, " tts n easy mode is on "

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 562
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 567
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

    .line 568
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 938
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 939
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 940
    .local v1, "y":F
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isThresholdReached(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 941
    iget v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    if-eq v2, v3, :cond_0

    .line 942
    const-string v2, "mCurrentPointerId different from mActivePointerId ==> return"

    invoke-virtual {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    .line 965
    :goto_0
    return-void

    .line 945
    :cond_0
    const-string v2, "support_clear_inner_circle_widget"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 946
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v3}, Lcom/android/incallui/widget/SecClearCircleImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    .line 951
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    .line 952
    sget-object v2, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    .line 953
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$3;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 948
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 949
    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_1

    .line 959
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->notifyTargetProximityRatio(FF)V

    .line 960
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->needToHideArrow(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 961
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->hideArrowHandleInternal()V

    .line 963
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateMovingCircle(FF)V

    goto :goto_0
.end method

.method public removeArrowMsg()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    const/16 v1, 0x64

    .line 183
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 198
    :cond_4
    return-void
.end method

.method public resetConversionAnimator()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1389
    iput-boolean v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    .line 1391
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1394
    :cond_0
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1395
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    .line 1406
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1407
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 1408
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1410
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1411
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 1412
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1414
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1415
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 1416
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1418
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 1419
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 1420
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageViewForAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1422
    :cond_5
    return-void

    .line 1399
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1400
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1402
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1403
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAlphaForDeactive(F)V
    .locals 2
    .param p1, "opacity"    # F

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_0

    .line 985
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 986
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 988
    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1166
    return-void
.end method

.method public setEasyTouchModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1169
    sput-boolean p1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    .line 1170
    return-void
.end method

.method public setHandleImageResource(I)V
    .locals 1
    .param p1, "resource"    # I

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1133
    return-void
.end method

.method public setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V
    .locals 0
    .param p1, "handleState"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    .line 629
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    .line 630
    return-void
.end method

.method public setHandleType(I)V
    .locals 0
    .param p1, "handleType"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    .line 176
    return-void
.end method

.method public setLeftHandleArrowResource(I)V
    .locals 2
    .param p1, "leftArrow"    # I

    .prologue
    .line 1136
    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    .line 1137
    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    .line 1138
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1144
    :cond_1
    return-void
.end method

.method public setLeftTabImageResource(II)V
    .locals 0
    .param p1, "normal"    # I
    .param p2, "press"    # I

    .prologue
    .line 1154
    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    .line 1155
    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    .line 1156
    return-void
.end method

.method public setMultiwindowChanged(Z)V
    .locals 0
    .param p1, "MultiwindowChanged"    # Z

    .prologue
    .line 1238
    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->isMultiwindowChanged:Z

    .line 1239
    return-void
.end method

.method public setParent(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;)V
    .locals 0
    .param p1, "widget"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    .line 621
    return-void
.end method

.method public setReachedRatio(D)V
    .locals 1
    .param p1, "ratio"    # D

    .prologue
    .line 1088
    iput-wide p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    .line 1089
    return-void
.end method

.method public setRightHandleArrowResource(I)V
    .locals 2
    .param p1, "rightArrow"    # I

    .prologue
    .line 1147
    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    .line 1148
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowList:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1151
    :cond_0
    return-void
.end method

.method public setRightTabImageResource(II)V
    .locals 0
    .param p1, "normal"    # I
    .param p2, "press"    # I

    .prologue
    .line 1159
    iput p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    .line 1160
    iput p2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    .line 1161
    return-void
.end method

.method public setTabImageResource(I)V
    .locals 1
    .param p1, "resource"    # I

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1120
    return-void
.end method

.method public setTargetImageResource(I)V
    .locals 1
    .param p1, "resource"    # I

    .prologue
    .line 1123
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/SecClearCircleImageView;->setImageResource(I)V

    .line 1129
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setUseExternalArrowImage(Z)V
    .locals 2
    .param p1, "externalArrowImage"    # Z

    .prologue
    const/4 v1, 0x4

    .line 923
    iput-boolean p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    .line 924
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    if-eqz v0, :cond_2

    .line 925
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 935
    :cond_2
    return-void
.end method

.method public setWidgetTypeTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public updateArrowHandle()V
    .locals 7

    .prologue
    const/16 v6, 0x65

    const/16 v5, 0x64

    const/4 v4, 0x4

    .line 854
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v0, :cond_5

    .line 855
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 862
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 864
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 867
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    .line 920
    :cond_4
    :goto_0
    return-void

    .line 871
    :cond_5
    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$7;->$SwitchMap$com$android$incallui$widget$incomingwidget$IncomingCallImageHandle$HandleState:[I

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 873
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 874
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    if-eqz v0, :cond_6

    .line 876
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 879
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 880
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 881
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 883
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 884
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 886
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 887
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 889
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    .line 890
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    if-eqz v0, :cond_4

    .line 891
    invoke-direct {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->showDefaultArrowHandleInternal()V

    goto :goto_0

    .line 896
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 897
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 903
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 904
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    :cond_a
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 907
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 909
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 910
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 912
    :cond_c
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 913
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mInCallArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 915
    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    goto/16 :goto_0

    .line 871
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

    .prologue
    const/16 v6, 0x12c

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 682
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

    .line 684
    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$7;->$SwitchMap$com$android$incallui$widget$incomingwidget$IncomingCallImageHandle$HandleState:[I

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 792
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    if-nez v0, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->updateArrowHandle()V

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    .line 797
    return-void

    .line 686
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    .line 687
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearAnimation()V

    .line 689
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    .line 696
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->notifyTargetProximityRatio(F)V

    goto :goto_0

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 693
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 701
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForTargetCircle(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 703
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 704
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearAnimation()V

    .line 705
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    .line 711
    :cond_3
    :goto_2
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 712
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    .line 719
    :goto_3
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-nez v0, :cond_4

    .line 720
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 721
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    .line 723
    :cond_4
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v0, v5, :cond_7

    .line 724
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 707
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 708
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 714
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 727
    :cond_7
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 728
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 732
    :cond_8
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 739
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    .line 740
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v0, v5, :cond_a

    .line 741
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 742
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 753
    :cond_9
    :goto_4
    iget-boolean v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-nez v0, :cond_0

    .line 754
    invoke-direct {p0, v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->animateForTargetCircle(Z)Z

    goto/16 :goto_0

    .line 744
    :cond_a
    iget v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 745
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 746
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 749
    :cond_b
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 750
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 759
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    .line 760
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    .line 761
    const-string v0, "support_clear_inner_circle_widget"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 762
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/SecClearCircleImageView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mClearTargetCircle:Lcom/android/incallui/widget/SecClearCircleImageView;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/SecClearCircleImageView;->clearInnerCircle(F)V

    goto/16 :goto_0

    .line 765
    :cond_c
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 774
    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    .line 775
    const v0, 0x3f266666    # 0.65f

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->showTarget(F)V

    .line 776
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 781
    :pswitch_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    const v0, 0x3f4f5c29    # 0.81f

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->showTarget(F)V

    .line 784
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 684
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
