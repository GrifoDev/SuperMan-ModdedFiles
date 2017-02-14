.class public Lcom/android/settings/widget/DotsPageIndicator;
.super Landroid/view/View;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;,
        Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private animDuration:J

.field private animHalfDuration:J

.field private attachedState:Z

.field private final combinedUnselectedPath:Landroid/graphics/Path;

.field controlX1:F

.field controlX2:F

.field controlY1:F

.field controlY2:F

.field private currentPage:I

.field private dotBottomY:F

.field private dotCenterX:[F

.field private dotCenterY:F

.field private dotDiameter:I

.field private dotRadius:F

.field private dotRevealFractions:[F

.field private dotTopY:F

.field endX1:F

.field endX2:F

.field endY1:F

.field endY2:F

.field private gap:I

.field private halfDotRadius:F

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private joiningAnimationSet:Landroid/animation/AnimatorSet;

.field private joiningAnimations:[Landroid/animation/ValueAnimator;

.field private joiningFractions:[F

.field private moveAnimation:Landroid/animation/ValueAnimator;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private pageCount:I

.field private final rectF:Landroid/graphics/RectF;

.field private retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

.field private retreatingJoinX1:F

.field private retreatingJoinX2:F

.field private revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

.field private selectedColour:I

.field private selectedDotInPosition:Z

.field private selectedDotX:F

.field private final selectedPaint:Landroid/graphics/Paint;

.field private unselectedColour:I

.field private final unselectedDotLeftPath:Landroid/graphics/Path;

.field private final unselectedDotPath:Landroid/graphics/Path;

.field private final unselectedDotRightPath:Landroid/graphics/Path;

.field private final unselectedPaint:Landroid/graphics/Paint;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/widget/DotsPageIndicator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/settings/widget/DotsPageIndicator;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/widget/DotsPageIndicator;)Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/widget/DotsPageIndicator;[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelJoiningAnimations()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->clearJoiningFractions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setDotRevealFraction(IF)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setJoiningFraction(IF)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/widget/DotsPageIndicator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/DotsPageIndicator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-int v0, v2

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/settings/R$styleable;->DotsPageIndicator:[I

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    mul-int/lit8 v2, v0, 0xc

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    const/4 v2, 0x2

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    iget-wide v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    const/4 v2, 0x3

    const v3, -0x7f000001

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const v2, 0x10c000d

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    :goto_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$1;

    invoke-direct {v2, p0}, Lcom/android/settings/widget/DotsPageIndicator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/DotsPageIndicator;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_0
    const v2, 0x10a0004

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private calculateDotPositions()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingRight()I

    move-result v7

    sub-int v3, v6, v7

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v2

    sub-int v6, v3, v1

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float v4, v6, v7

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    const/4 v0, 0x0

    :goto_0
    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v7, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    iget v8, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    int-to-float v7, v7

    add-float/2addr v7, v4

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-float v6, v5

    iput v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    int-to-float v6, v5

    iget v7, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v6, v5

    int-to-float v6, v6

    iput v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method

.method private cancelJoiningAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelMoveAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelRetreatAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelRevealAnimations()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelRunningAnimations()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelMoveAnimation()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelJoiningAnimations()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRetreatAnimation()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRevealAnimations()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method private clearJoiningFractions()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private createJoiningAnimator(IJ)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/DotsPageIndicator$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/DotsPageIndicator$5;-><init>(Lcom/android/settings/widget/DotsPageIndicator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
    .locals 10

    const-wide/16 v8, 0x4

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    if-le p3, p2, :cond_0

    new-instance v5, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    sub-float v1, p1, v1

    mul-float/2addr v1, v3

    sub-float v1, p1, v1

    invoke-direct {v5, p0, v1}, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    :goto_0
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$3;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$3;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$4;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$4;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    div-long/2addr v0, v8

    :goto_1
    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long/2addr v0, v8

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v6

    :cond_0
    new-instance v5, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    sub-float/2addr v1, p1

    mul-float/2addr v1, v3

    add-float/2addr v1, p1

    invoke-direct {v5, p0, v1}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private drawSelected(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnselected(Landroid/graphics/Canvas;)V
    .locals 10

    const/16 v9, 0x15

    const/high16 v8, -0x40800000    # -1.0f

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-ge v1, v0, :cond_3

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    move v6, v1

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v3, v0, v6

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    move v4, v8

    :goto_2
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    aget v5, v0, v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/DotsPageIndicator;->getUnselectedPath(IFFFF)Landroid/graphics/Path;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aget v4, v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v0, v0, v1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget-object v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_4

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRetreatingJoinPath()Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRequiredWidth()I
    .locals 3

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private getRetreatingJoinPath()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object v0
.end method

.method private getUnselectedPath(IFFFF)Landroid/graphics/Path;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p4, v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v1, v1, p1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_4

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v3, p2

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v3, p3

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, -0x3ccc0000    # -180.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v0, p3, v0

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float v0, p3, v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_4
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_5

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v3, p2

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v3, p3

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v3, p3

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_6
    const v0, 0x3727c5ac    # 1.0E-5f

    cmpl-float v0, p5, v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v2, p5

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object v0
.end method

.method private resetState()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iput v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iput v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    :cond_0
    return-void
.end method

.method private setCurrentPageImmediate()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    :goto_0
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    :cond_0
    return-void

    :cond_1
    iput v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    goto :goto_0
.end method

.method private setDotRevealFraction(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    aput p2, v0, p1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private setJoiningFraction(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aput p2, v0, p1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private setPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method private setSelectedPage(I)V
    .locals 12

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-eq p1, v3, :cond_0

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    sub-int v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v3, v3, p1

    invoke-direct {p0, v3, v2, p1, v1}, Lcom/android/settings/widget/DotsPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    new-array v3, v1, [Landroid/animation/ValueAnimator;

    iput-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    if-le p1, v2, :cond_2

    add-int v3, v2, v0

    :goto_1
    int-to-long v6, v0

    iget-wide v8, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v10, 0x8

    div-long/2addr v8, v10

    mul-long/2addr v6, v8

    invoke-direct {p0, v3, v6, v7}, Lcom/android/settings/widget/DotsPageIndicator;->createJoiningAnimator(IJ)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->startJoiningAnimations()V

    :goto_2
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->invalidate()V

    goto :goto_2
.end method

.method private startJoiningAnimations()V
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->clearAnimation()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->drawUnselected(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->drawSelected(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v2, v0

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/widget/DotsPageIndicator;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void

    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    goto :goto_0

    :sswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_1

    :sswitch_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setSelectedPage(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/DotsPageIndicator$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/DotsPageIndicator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method
