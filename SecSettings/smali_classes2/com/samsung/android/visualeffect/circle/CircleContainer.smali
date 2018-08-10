.class public Lcom/samsung/android/visualeffect/circle/CircleContainer;
.super Landroid/widget/FrameLayout;
.source "CircleContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/circle/CircleContainer$1;,
        Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;
    }
.end annotation


# instance fields
.field private final COLOR_RIPPLE_RATIO:F

.field private final TOP_RIPPLE_RATIO:F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

.field mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

.field mColorRipple:Landroid/widget/ImageView;

.field private mColorState:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIsAutoState:Z

.field mTopRipple:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Lcom/samsung/android/visualeffect/circle/Circle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/visualeffect/circle/CircleContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->TOP_RIPPLE_RATIO:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->COLOR_RIPPLE_RATIO:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    new-instance v0, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$1;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "circle_container_transition_name"

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setTransitionName(Ljava/lang/String;)V

    return-void
.end method

.method private setRippleTint(ILandroid/widget/ImageView;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v2, v1, p1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method private startRippleAnim(I)V
    .locals 13

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setRippleTint(ILandroid/widget/ImageView;)V

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v7, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const v11, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f19999a    # 0.6f

    const/4 v10, 0x0

    const v11, 0x3dcccccd    # 0.1f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x29b

    invoke-virtual {v2, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;

    invoke-direct {v9, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer$2;-><init>(Lcom/samsung/android/visualeffect/circle/CircleContainer;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v8, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public doAutoRippleAnim(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mIsAutoState:Z

    iput p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/Circle;->getScoreAnimProgress()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    iput v3, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    :cond_1
    iget v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    invoke-direct {p0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->startRippleAnim(I)V

    iget v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircleColor(I)V

    return-void
.end method

.method public getCircleColorState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    const v7, 0x3f83d70a    # 1.03f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v5, v3

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v0

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v5, v6}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_1
    div-int v5, v0, v3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0
.end method

.method public removeCircleListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    return-void
.end method

.method public setCircle(II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080110

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->RIPPLE:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorRipple:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080111

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mTopRipple:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    div-int/lit8 v3, p1, 0x2

    sub-int/2addr v3, p2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/visualeffect/circle/Circle;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {p0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setCircleColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v1, v2, p1}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/Circle;->setRingColor(I)V

    :cond_0
    return-void
.end method

.method public setCircleListener(Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircleListener:Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;

    return-void
.end method

.method public setDeltaScore(III)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v1, v2, p2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/samsung/android/visualeffect/circle/Circle;->setDeltaScore(III)V

    :cond_0
    return-void
.end method

.method public setScore(IIZ)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZI)V

    return-void
.end method

.method public setScore(IIZI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mColorState:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mCircle:Lcom/samsung/android/visualeffect/circle/Circle;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/CircleContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->CIRCLE_PROGRESS:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-static {v1, v2, p2}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/samsung/android/visualeffect/circle/Circle;->setScore(IIZI)V

    :cond_0
    return-void
.end method
