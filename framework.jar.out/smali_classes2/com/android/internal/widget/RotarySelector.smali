.class public Lcom/android/internal/widget/RotarySelector;
.super Landroid/view/View;
.source "RotarySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;
    }
.end annotation


# static fields
.field private static final ARROW_SCRUNCH_DIP:I = 0x6

.field private static final DBG:Z = false

.field private static final EDGE_PADDING_DIP:I = 0x9

.field private static final EDGE_TRIGGER_DIP:I = 0x64

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT_HANDLE_GRABBED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "RotarySelector"

.field public static final NOTHING_GRABBED:I = 0x0

.field static final OUTER_ROTARY_RADIUS_DIP:I = 0x186

.field public static final RIGHT_HANDLE_GRABBED:I = 0x2

.field static final ROTARY_STROKE_WIDTH_DIP:I = 0x53

.field static final SNAP_BACK_ANIMATION_DURATION_MILLIS:I = 0x12c

.field static final SPIN_ANIMATION_DURATION_MILLIS:I = 0x320

.field public static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x14L

.field private static final VIBRATE_SHORT:J = 0x14L

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VISUAL_DEBUG:Z


# instance fields
.field private mAnimating:Z

.field private mAnimatingDeltaXEnd:I

.field private mAnimatingDeltaXStart:I

.field private mAnimationDuration:J

.field private mAnimationStartTime:J

.field private mArrowLongLeft:Landroid/graphics/Bitmap;

.field private mArrowLongRight:Landroid/graphics/Bitmap;

.field final mArrowMatrix:Landroid/graphics/Matrix;

.field private mArrowShortLeftAndRight:Landroid/graphics/Bitmap;

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBackgroundHeight:I

.field private mBackgroundWidth:I

.field final mBgMatrix:Landroid/graphics/Matrix;

.field private mDensity:F

.field private mDimple:Landroid/graphics/Bitmap;

.field private mDimpleDim:Landroid/graphics/Bitmap;

.field private mDimpleSpacing:I

.field private mDimpleWidth:I

.field private mDimplesOfFling:I

.field private mEdgeTriggerThresh:I

.field private mGrabbedState:I

.field private final mInnerRadius:I

.field private mInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mLeftHandleIcon:Landroid/graphics/Bitmap;

.field private mLeftHandleX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

.field private mOrientation:I

.field private final mOuterRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightHandleIcon:Landroid/graphics/Bitmap;

.field private mRightHandleX:I

.field private mRotaryOffsetX:I

.field private mTriggered:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 58
    const/4 v1, 0x4

    .line 57
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 59
    const/16 v1, 0xd

    .line 57
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/RotarySelector;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RotarySelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput v4, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    .line 96
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    .line 100
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 105
    iput v4, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    .line 114
    iput-boolean v4, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 162
    iput v4, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 181
    sget-object v3, Lcom/android/internal/R$styleable;->RotarySelector:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mOrientation:I

    .line 183
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 186
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    .line 190
    const v3, 0x10804fd

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    .line 191
    const v3, 0x10804fe

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    .line 192
    const v3, 0x10804ff

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    .line 194
    const v3, 0x10804f5

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowLongLeft:Landroid/graphics/Bitmap;

    .line 195
    const v3, 0x10804f8

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowLongRight:Landroid/graphics/Bitmap;

    .line 196
    const v3, 0x10804fb

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mArrowShortLeftAndRight:Landroid/graphics/Bitmap;

    .line 198
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 200
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mEdgeTriggerThresh:I

    .line 202
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    .line 204
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    .line 205
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    .line 206
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    const/high16 v4, 0x43c30000    # 390.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    .line 207
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    const v4, 0x43998000    # 307.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    .line 209
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 210
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mMinimumVelocity:I

    .line 211
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mMaximumVelocity:I

    .line 177
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 718
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/RotarySelector;->vibrate(J)V

    .line 719
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;->onDialTrigger(Landroid/view/View;I)V

    .line 717
    :cond_0
    return-void
.end method

.method private drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/Bitmap;
    .param p2, "c"    # Landroid/graphics/Canvas;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 698
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 700
    .local v0, "h":I
    div-int/lit8 v2, v1, 0x2

    sub-int v2, p3, v2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    sub-int v3, p4, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 696
    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getYOnArc(IIII)I
    .locals 6
    .param p1, "backgroundWidth"    # I
    .param p2, "innerRadius"    # I
    .param p3, "outerRadius"    # I
    .param p4, "x"    # I

    .prologue
    .line 475
    sub-int v4, p3, p2

    div-int/lit8 v0, v4, 0x2

    .line 476
    .local v0, "halfWidth":I
    add-int v1, p2, v0

    .line 479
    .local v1, "middleRadius":I
    div-int/lit8 v4, p1, 0x2

    sub-int v2, v4, p4

    .line 483
    .local v2, "triangleBottom":I
    mul-int v4, v1, v1

    mul-int v5, v2, v2

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 489
    .local v3, "triangleY":I
    sub-int v4, v1, v3

    add-int/2addr v4, v0

    return v4
.end method

.method private isHoriz()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 242
    iget v1, p0, Lcom/android/internal/widget/RotarySelector;->mOrientation:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 778
    const-string/jumbo v0, "RotarySelector"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 668
    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    .line 669
    iput v0, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 670
    iput v0, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 671
    invoke-direct {p0, v0}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 672
    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 667
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 729
    iget v0, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 730
    iput p1, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 728
    :cond_0
    return-void
.end method

.method private startAnimation(III)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "endX"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    .line 617
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationStartTime:J

    .line 618
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    .line 619
    iput p1, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXStart:I

    .line 620
    iput p2, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    .line 621
    invoke-direct {p0, v2}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 622
    iput v2, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 623
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 615
    return-void
.end method

.method private startAnimationWithVelocity(III)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "endX"    # I
    .param p3, "pixelsPerSecond"    # I

    .prologue
    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    .line 628
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationStartTime:J

    .line 629
    sub-int v0, p2, p1

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    .line 630
    iput p1, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXStart:I

    .line 631
    iput p2, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    .line 632
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 626
    return-void
.end method

.method private updateAnimation()V
    .locals 12

    .prologue
    .line 637
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationStartTime:J

    sub-long v6, v8, v10

    .line 638
    .local v6, "millisSoFar":J
    iget-wide v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    sub-long v4, v8, v6

    .line 639
    .local v4, "millisLeft":J
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXStart:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    sub-int v3, v8, v9

    .line 640
    .local v3, "totalDeltaX":I
    if-gez v3, :cond_0

    const/4 v1, 0x1

    .line 642
    .local v1, "goingRight":Z
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_1

    .line 643
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->reset()V

    .line 644
    return-void

    .line 640
    .end local v1    # "goingRight":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "goingRight":Z
    goto :goto_0

    .line 648
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    long-to-float v9, v6

    iget-wide v10, p0, Lcom/android/internal/widget/RotarySelector;->mAnimationDuration:J

    long-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 649
    .local v2, "interpolation":F
    int-to-float v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v2

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 650
    .local v0, "dx":I
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimatingDeltaXEnd:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 655
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    if-lez v8, :cond_2

    .line 656
    if-nez v1, :cond_3

    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/lit8 v9, v9, -0x3

    if-ge v8, v9, :cond_3

    .line 658
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 664
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 636
    return-void

    .line 659
    :cond_3
    if-eqz v1, :cond_2

    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/lit8 v9, v9, 0x3

    if-le v8, v9, :cond_2

    .line 661
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    goto :goto_1
.end method

.method private declared-synchronized vibrate(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    .line 681
    const/4 v4, -0x2

    .line 679
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 682
    .local v0, "hapticEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 683
    iget-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    .line 684
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 685
    const-string/jumbo v2, "vibrator"

    .line 684
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mVibrator:Landroid/os/Vibrator;

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RotarySelector;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/internal/widget/RotarySelector;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 678
    return-void

    .line 679
    .end local v0    # "hapticEnabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hapticEnabled":Z
    goto :goto_0

    .end local v0    # "hapticEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 299
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 310
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 313
    .local v11, "height":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->updateAnimation()V

    .line 318
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 344
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "invalid mGrabbedState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 327
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-nez v17, :cond_1

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/high16 v18, -0x3d4c0000    # -90.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    int-to-float v0, v11

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 332
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowLongLeft:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 347
    :goto_0
    :pswitch_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    .line 348
    .local v5, "bgHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 349
    sub-int v6, v11, v5

    .line 366
    .local v6, "bgTop":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 368
    .local v15, "xOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    .line 367
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 372
    .local v9, "drawableY":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_4

    move v14, v15

    .line 373
    .local v14, "x":I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_5

    add-int v16, v9, v6

    .line 374
    .local v16, "y":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 384
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 385
    div-int/lit8 v17, v13, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 388
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    .line 387
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 403
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    .line 404
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_9

    move v14, v15

    .line 411
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_a

    add-int v16, v9, v6

    .line 412
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimple:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mRightHandleIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 421
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 422
    .local v7, "dimpleLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    move/from16 v17, v0

    div-int/lit8 v10, v17, 0x2

    .line 423
    .local v10, "halfdimple":I
    :goto_a
    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v7, v0, :cond_d

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    .line 427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    .line 424
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 435
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    move/from16 v17, v0

    sub-int v7, v7, v17

    goto :goto_a

    .line 335
    .end local v5    # "bgHeight":I
    .end local v6    # "bgTop":I
    .end local v7    # "dimpleLeft":I
    .end local v9    # "drawableY":I
    .end local v10    # "halfdimple":I
    .end local v14    # "x":I
    .end local v15    # "xOffset":I
    .end local v16    # "y":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-nez v17, :cond_2

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/high16 v18, -0x3d4c0000    # -90.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v11

    add-int v19, v19, v11

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowLongRight:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 350
    .restart local v5    # "bgHeight":I
    :cond_3
    sub-int v6, v13, v5

    .restart local v6    # "bgTop":I
    goto/16 :goto_1

    .line 372
    .restart local v9    # "drawableY":I
    .restart local v15    # "xOffset":I
    :cond_4
    add-int v14, v9, v6

    .restart local v14    # "x":I
    goto/16 :goto_2

    .line 373
    :cond_5
    sub-int v16, v11, v15

    .restart local v16    # "y":I
    goto/16 :goto_3

    .line 378
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto/16 :goto_4

    .line 386
    :cond_7
    div-int/lit8 v17, v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v18, v0

    add-int v15, v17, v18

    goto/16 :goto_5

    .line 397
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    sub-int v19, v11, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto/16 :goto_6

    .line 410
    :cond_9
    add-int v14, v9, v6

    goto/16 :goto_7

    .line 411
    :cond_a
    sub-int v16, v11, v15

    goto/16 :goto_8

    .line 416
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto/16 :goto_9

    .line 433
    .restart local v7    # "dimpleLeft":I
    .restart local v10    # "halfdimple":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    sub-int v19, v11, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto/16 :goto_b

    .line 439
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 440
    .local v8, "dimpleRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    add-int v12, v17, v10

    .line 441
    .local v12, "rightThresh":I
    :goto_c
    if-ge v8, v12, :cond_f

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mBackgroundWidth:I

    move/from16 v17, v0

    .line 444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mInnerRadius:I

    move/from16 v18, v0

    .line 445
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mOuterRadius:I

    move/from16 v19, v0

    .line 442
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/internal/widget/RotarySelector;->getYOnArc(IIII)I

    move-result v9

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 453
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    move/from16 v17, v0

    add-int v8, v8, v17

    goto :goto_c

    .line 451
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/RotarySelector;->mDimpleDim:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    sub-int v19, v11, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/RotarySelector;->drawCentered(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    goto :goto_d

    .line 298
    :cond_f
    return-void

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 281
    .local v3, "length":I
    :goto_0
    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 282
    .local v1, "arrowScrunch":I
    iget-object v4, p0, Lcom/android/internal/widget/RotarySelector;->mArrowShortLeftAndRight:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 288
    .local v0, "arrowH":I
    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    add-int/2addr v4, v0

    sub-int v2, v4, v1

    .line 290
    .local v2, "height":I
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 277
    :goto_1
    return-void

    .line 280
    .end local v0    # "arrowH":I
    .end local v1    # "arrowScrunch":I
    .end local v2    # "height":I
    .end local v3    # "length":I
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .restart local v3    # "length":I
    goto :goto_0

    .line 293
    .restart local v0    # "arrowH":I
    .restart local v1    # "arrowScrunch":I
    .restart local v2    # "height":I
    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x0

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 222
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDensity:F

    const/high16 v4, 0x41100000    # 9.0f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 223
    .local v0, "edgePadding":I
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    .line 224
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, p1

    .line 225
    .local v2, "length":I
    :goto_0
    sub-int v3, v2, v0

    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    .line 226
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    .line 229
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    sub-int v1, p1, v3

    .line 233
    .local v1, "left":I
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v4, v5, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 234
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 219
    .end local v1    # "left":I
    :goto_1
    return-void

    .end local v2    # "length":I
    :cond_0
    move v2, p2

    .line 224
    goto :goto_0

    .line 237
    .restart local v2    # "length":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/RotarySelector;->mBgMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/internal/widget/RotarySelector;->mBackgroundHeight:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x5

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 500
    iget-boolean v8, p0, Lcom/android/internal/widget/RotarySelector;->mAnimating:Z

    if-eqz v8, :cond_0

    .line 501
    return v11

    .line 503
    :cond_0
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    .line 504
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 506
    :cond_1
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 510
    .local v2, "height":I
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v1, v8

    .line 513
    .local v1, "eventX":I
    :goto_0
    iget v3, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleWidth:I

    .line 515
    .local v3, "hitWindow":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 516
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 612
    :cond_2
    :goto_1
    return v11

    .line 512
    .end local v0    # "action":I
    .end local v1    # "eventX":I
    .end local v3    # "hitWindow":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v2, v8

    .restart local v1    # "eventX":I
    goto :goto_0

    .line 519
    .restart local v0    # "action":I
    .restart local v3    # "hitWindow":I
    :pswitch_0
    iput-boolean v10, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 520
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-eqz v8, :cond_4

    .line 521
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->reset()V

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 524
    :cond_4
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    add-int/2addr v8, v3

    if-ge v1, v8, :cond_5

    .line 525
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 526
    invoke-direct {p0, v11}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 528
    const-wide/16 v8, 0x14

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/RotarySelector;->vibrate(J)V

    goto :goto_1

    .line 529
    :cond_5
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int/2addr v8, v3

    if-le v1, v8, :cond_2

    .line 530
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 531
    invoke-direct {p0, v9}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 532
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 533
    const-wide/16 v8, 0x14

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/RotarySelector;->vibrate(J)V

    goto :goto_1

    .line 539
    :pswitch_1
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-ne v8, v11, :cond_8

    .line 540
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 542
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 543
    .local v5, "rightThresh":I
    :goto_2
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mEdgeTriggerThresh:I

    sub-int v8, v5, v8

    if-lt v1, v8, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    if-nez v8, :cond_2

    .line 544
    iput-boolean v11, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 545
    invoke-direct {p0, v11}, Lcom/android/internal/widget/RotarySelector;->dispatchTriggerEvent(I)V

    .line 546
    iget-object v7, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 547
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMaximumVelocity:I

    int-to-float v8, v8

    const/16 v9, 0x3e8

    invoke-virtual {v7, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 548
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 549
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v4, v8

    .line 551
    .local v4, "rawVelocity":I
    :goto_3
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMinimumVelocity:I

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 554
    .local v6, "velocity":I
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    div-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 553
    const/16 v9, 0x8

    .line 552
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 556
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    .line 557
    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/2addr v9, v10

    .line 555
    invoke-direct {p0, v8, v9, v6}, Lcom/android/internal/widget/RotarySelector;->startAnimationWithVelocity(III)V

    goto/16 :goto_1

    .line 542
    .end local v4    # "rawVelocity":I
    .end local v5    # "rightThresh":I
    .end local v6    # "velocity":I
    .end local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_6
    move v5, v2

    .restart local v5    # "rightThresh":I
    goto :goto_2

    .line 550
    .restart local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_7
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v8, v8

    neg-int v4, v8

    .restart local v4    # "rawVelocity":I
    goto :goto_3

    .line 560
    .end local v4    # "rawVelocity":I
    .end local v5    # "rightThresh":I
    .end local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_8
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-ne v8, v9, :cond_2

    .line 561
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 563
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mEdgeTriggerThresh:I

    if-gt v1, v8, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    if-nez v8, :cond_2

    .line 564
    iput-boolean v11, p0, Lcom/android/internal/widget/RotarySelector;->mTriggered:Z

    .line 565
    invoke-direct {p0, v9}, Lcom/android/internal/widget/RotarySelector;->dispatchTriggerEvent(I)V

    .line 566
    iget-object v7, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 567
    .restart local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMaximumVelocity:I

    int-to-float v8, v8

    const/16 v9, 0x3e8

    invoke-virtual {v7, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 568
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->isHoriz()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 569
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    float-to-int v4, v8

    .line 571
    .restart local v4    # "rawVelocity":I
    :goto_4
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mMinimumVelocity:I

    neg-int v8, v8

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 574
    .restart local v6    # "velocity":I
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    div-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 573
    const/16 v9, 0x8

    .line 572
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    .line 576
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    .line 577
    iget v9, p0, Lcom/android/internal/widget/RotarySelector;->mDimplesOfFling:I

    iget v10, p0, Lcom/android/internal/widget/RotarySelector;->mDimpleSpacing:I

    mul-int/2addr v9, v10

    neg-int v9, v9

    .line 575
    invoke-direct {p0, v8, v9, v6}, Lcom/android/internal/widget/RotarySelector;->startAnimationWithVelocity(III)V

    goto/16 :goto_1

    .line 570
    .end local v4    # "rawVelocity":I
    .end local v6    # "velocity":I
    :cond_9
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v8, v8

    neg-int v4, v8

    .restart local v4    # "rawVelocity":I
    goto :goto_4

    .line 585
    .end local v4    # "rawVelocity":I
    .end local v7    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_2
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-ne v8, v11, :cond_b

    .line 586
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v13, :cond_b

    .line 588
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleX:I

    sub-int v8, v1, v8

    const/16 v9, 0x12c

    invoke-direct {p0, v8, v10, v9}, Lcom/android/internal/widget/RotarySelector;->startAnimation(III)V

    .line 594
    :cond_a
    :goto_5
    iput v10, p0, Lcom/android/internal/widget/RotarySelector;->mRotaryOffsetX:I

    .line 595
    invoke-direct {p0, v10}, Lcom/android/internal/widget/RotarySelector;->setGrabbedState(I)V

    .line 596
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 597
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    .line 598
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 599
    iput-object v12, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 589
    :cond_b
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mGrabbedState:I

    if-ne v8, v9, :cond_a

    .line 590
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v13, :cond_a

    .line 592
    iget v8, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleX:I

    sub-int v8, v1, v8

    const/16 v9, 0x12c

    invoke-direct {p0, v8, v10, v9}, Lcom/android/internal/widget/RotarySelector;->startAnimation(III)V

    goto :goto_5

    .line 604
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/widget/RotarySelector;->reset()V

    .line 605
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 606
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    .line 607
    iget-object v8, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 608
    iput-object v12, p0, Lcom/android/internal/widget/RotarySelector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setLeftHandleResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mLeftHandleIcon:Landroid/graphics/Bitmap;

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 253
    return-void
.end method

.method public setOnDialTriggerListener(Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/internal/widget/RotarySelector;->mOnDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    .line 710
    return-void
.end method

.method public setRightHandleResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RotarySelector;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RotarySelector;->mRightHandleIcon:Landroid/graphics/Bitmap;

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 268
    return-void
.end method
