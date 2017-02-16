.class public Lcom/android/phone/common/dialpad/DialpadKeyButton;
.super Landroid/widget/FrameLayout;
.source "DialpadKeyButton.java"


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

.field private mWasClickable:Z

.field private mWasLongClickable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->init(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    .line 124
    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->init(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/common/dialpad/DialpadKeyButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private cancelLongHover()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 339
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    .line 340
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mRippleEffectWidth:I

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mRippleEffectHeight:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextColor:I

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextColor:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedTextColor:I

    .line 139
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

    .line 140
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;

    invoke-direct {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;-><init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
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

    .line 149
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/phone/common/dialpad/DialpadKeyButton$2;

    invoke-direct {v1, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton$2;-><init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    .line 160
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberColorAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterColorAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto/16 :goto_0
.end method

.method private setLongHovered(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eq v0, p1, :cond_0

    .line 323
    iput-boolean p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    .line 326
    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    .line 328
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPressedColor()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 212
    iget v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    if-ne v0, v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 218
    :cond_2
    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    .line 220
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setReleasedColor()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 228
    iget v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    if-ne v0, v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    .line 233
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private simulateClickForAccessibility()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 308
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 316
    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->sendAccessibilityEvent(I)V

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 261
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 265
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasClickable:Z

    .line 266
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    .line 267
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Lcom/android/phone/common/dialpad/DialpadKeyButton$3;

    invoke-direct {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton$3;-><init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/android/phone/common/dialpad/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setClickable(Z)V

    .line 281
    invoke-virtual {p0, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_4

    .line 286
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->performLongClick()Z

    .line 292
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->cancelLongHover()V

    .line 293
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setClickable(Z)V

    .line 294
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_0

    .line 288
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    goto :goto_1

    .line 262
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 344
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 346
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    iget v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mRippleEffectWidth:I

    iget v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 240
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 241
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 242
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 243
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 244
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 185
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mNumberTextView:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f1000fd

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLetterTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 248
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    .line 250
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    .line 175
    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLongHoverContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    .line 167
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setOnPressedListener(Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;)V
    .locals 0
    .param p1, "onPressedListener"    # Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    .line 115
    return-void
.end method

.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    .line 200
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    if-eqz p1, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressedColor()V

    goto :goto_0

    .line 206
    :cond_3
    iget v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mPressedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setReleasedColor()V

    goto :goto_0
.end method
