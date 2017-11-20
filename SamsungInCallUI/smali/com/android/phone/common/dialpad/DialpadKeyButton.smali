.class public Lcom/android/phone/common/dialpad/DialpadKeyButton;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;
    }
.end annotation


# static fields
.field private static final LONG_HOVER_TIMEOUT:I

.field private static final RELEASED_ANIMATION_DURATION:I = 0x1f4

.field private static final STATE_PRESSED:I = 0x1

.field private static final STATE_RELEASED:I = 0x2


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBackupContentDesc:Ljava/lang/CharSequence;

.field mColorAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHoverBounds:Landroid/graphics/RectF;

.field mLetterColorAnimator:Landroid/animation/ValueAnimator;

.field private mLetterTextColor:I

.field private mLetterTextView:Landroid/widget/TextView;

.field private mLongHoverContentDesc:Ljava/lang/CharSequence;

.field private mLongHoverRunnable:Ljava/lang/Runnable;

.field private mLongHovered:Z

.field mNumberColorAnimator:Landroid/animation/ValueAnimator;

.field private mNumberTextColor:I

.field private mNumberTextView:Landroid/widget/TextView;

.field private mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

.field private mPressedState:I

.field private mPressedTextColor:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I

.field private mVGARippleEffectSize:I

.field private mWasClickable:Z

.field private mWasLongClickable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/common/dialpad/DialpadKeyButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private cancelLongHover()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a065d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mVGARippleEffectSize:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a034f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mRippleEffectHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedTextColor:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;

    invoke-direct {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;-><init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/phone/common/dialpad/DialpadKeyButton$2;

    invoke-direct {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton$2;-><init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberColorAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterColorAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto/16 :goto_0
.end method

.method private setLongHovered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPressedColor()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setReleasedColor()V
    .locals 2

    const/4 v1, 0x2

    iget v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private simulateClickForAccessibility()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    const-string v0, "AccessibilityManager is null."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasClickable:Z

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/phone/common/dialpad/DialpadKeyButton$3;

    invoke-direct {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton$3;-><init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/android/phone/common/dialpad/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->performLongClick()Z

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->cancelLongHover()V

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mVGARippleEffectSize:I

    iget v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mVGARippleEffectSize:I

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mRippleEffectWidth:I

    iget v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f10013d

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;

    const v0, 0x7f10013e

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLongHoverContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnPressedListener(Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    return-void
.end method

.method public setPressed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressedColor()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setReleasedColor()V

    goto :goto_0
.end method
