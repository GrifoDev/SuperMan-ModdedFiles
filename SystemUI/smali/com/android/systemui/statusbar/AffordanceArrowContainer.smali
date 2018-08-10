.class public Lcom/android/systemui/statusbar/AffordanceArrowContainer;
.super Landroid/widget/LinearLayout;
.source "AffordanceArrowContainer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mUnderAnimRepeatCount:I

.field private mUnderAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUnderArrow:Landroid/widget/ImageView;

.field private mUpperAnimRepeatCount:I

.field private mUpperAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpperArrow:Landroid/widget/ImageView;

.field private mVisualCuePlaying:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimRepeatCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimRepeatCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/AffordanceArrowContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimRepeatCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/AffordanceArrowContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimRepeatCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/AffordanceArrowContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mVisualCuePlaying:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "AffordanceArrowContainer"

    iput-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mVisualCuePlaying:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "AffordanceArrowContainer"

    iput-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mVisualCuePlaying:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "AffordanceArrowContainer"

    iput-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mVisualCuePlaying:Z

    return-void
.end method

.method private initializeRepeatCounter()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimRepeatCount:I

    iput v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimRepeatCount:I

    return-void
.end method

.method private setAnimators()V
    .locals 8

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;-><init>(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/statusbar/AffordanceArrowContainer$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer$2;-><init>(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderArrow:Landroid/widget/ImageView;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperArrow:Landroid/widget/ImageView;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x14d

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x14d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderArrow:Landroid/widget/ImageView;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperArrow:Landroid/widget/ImageView;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x29b

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x29b

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public initContainer(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderArrow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setAnimators()V

    return-void
.end method

.method public isAnimationPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mVisualCuePlaying:Z

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/PorterDuffColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setImageAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setAlpha(F)V

    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setImageAlpha(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->initializeRepeatCounter()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUpperAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->mUnderAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
