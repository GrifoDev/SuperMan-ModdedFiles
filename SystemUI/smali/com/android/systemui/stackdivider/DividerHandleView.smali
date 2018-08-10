.class public Lcom/android/systemui/stackdivider/DividerHandleView;
.super Landroid/view/View;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerHandleView$1;,
        Lcom/android/systemui/stackdivider/DividerHandleView$2;,
        Lcom/android/systemui/stackdivider/DividerHandleView$3;
    }
.end annotation


# static fields
.field private static final HEIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mCircleDiameter:I

.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private final mDefaultHeight:I

.field private final mDefaultWidth:I

.field private final mEqualHandleViewHeight:I

.field private final mEqualHandleViewsGap:I

.field private mHeight:I

.field private mMinimizedAndHomeResizable:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I

.field private mRecentVisible:Z

.field private mSnapWindowVisible:Z

.field private mTouching:Z

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerHandleView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerHandleView;FZ)Landroid/animation/AnimatorSet;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerHandleView;->getAnimator(FZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$2;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v5, 0x7f070179

    const v4, 0x7f070178

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRecentVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mMinimizedAndHomeResizable:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mSnapWindowVisible:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060073

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070408

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070407

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewsGap:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mDefaultWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mDefaultHeight:I

    return-void
.end method

.method private drawRoundRectsDuringRecentsVisible(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mDefaultWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v9, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mDefaultHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v12, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    :goto_0
    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getHeight()I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewsGap:I

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewHeight:I

    add-int/2addr v0, v8

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewsGap:I

    add-int v11, v0, v1

    if-eqz v10, :cond_2

    int-to-float v1, v9

    int-to-float v2, v8

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mDefaultWidth:I

    add-int/2addr v0, v9

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewHeight:I

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    int-to-float v1, v9

    int-to-float v2, v11

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mDefaultWidth:I

    add-int/2addr v0, v9

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewHeight:I

    add-int/2addr v0, v11

    int-to-float v4, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_2
    int-to-float v1, v8

    int-to-float v2, v12

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewHeight:I

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mDefaultHeight:I

    add-int/2addr v0, v12

    int-to-float v4, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    int-to-float v2, v12

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mEqualHandleViewHeight:I

    add-int/2addr v0, v11

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mDefaultHeight:I

    add-int/2addr v0, v12

    int-to-float v4, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private getAnimator(FZ)Landroid/animation/AnimatorSet;
    .locals 11

    const v4, 0x3fe66666    # 1.8f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-string/jumbo v6, "scaleX"

    new-array v7, v10, [F

    aput p1, v7, v8

    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    aput v3, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v3, "scaleY"

    new-array v6, v10, [F

    aput p1, v6, v8

    if-eqz p2, :cond_1

    :goto_1
    aput v4, v6, v9

    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v10, [Landroid/animation/Animator;

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p2, :cond_2

    const/16 v3, 0xa7

    :goto_2
    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x14d

    goto :goto_2
.end method


# virtual methods
.method public animateDividerHandle()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->getAnimator(FZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerHandleView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerHandleView$4;-><init>(Lcom/android/systemui/stackdivider/DividerHandleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRecentVisible:Z

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRecentVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRecentVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mMinimizedAndHomeResizable:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mSnapWindowVisible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->drawRoundRectsDuringRecentsVisible(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v10, v0, v1

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    int-to-float v1, v8

    int-to-float v2, v10

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    add-int/2addr v0, v10

    int-to-float v4, v0

    int-to-float v5, v9

    int-to-float v6, v9

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setGuideViewMode(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060103

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060073

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setMinimizedDockStack(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mMinimizedAndHomeResizable:Z

    if-eqz p1, :cond_1

    :goto_0
    if-eq v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mMinimizedAndHomeResizable:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mMinimizedAndHomeResizable:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public setSnapViewMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mSnapWindowVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    :goto_0
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    goto :goto_0
.end method

.method public setTouching(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouching:Z

    return-void
.end method
