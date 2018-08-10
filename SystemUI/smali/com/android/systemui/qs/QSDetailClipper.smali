.class public Lcom/android/systemui/qs/QSDetailClipper;
.super Ljava/lang/Object;
.source "QSDetailClipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetailClipper$1;,
        Lcom/android/systemui/qs/QSDetailClipper$2;,
        Lcom/android/systemui/qs/QSDetailClipper$3;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private final mBackground:Landroid/graphics/drawable/TransitionDrawable;

.field private final mDetail:Landroid/view/View;

.field private final mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

.field private final mReverseBackground:Ljava/lang/Runnable;

.field private final mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSDetailClipper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$1;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mReverseBackground:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$2;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$3;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    return-void
.end method


# virtual methods
.method public animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 10

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v3, v4, p1

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v0, v4, p2

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    if-gez v3, :cond_4

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_2
    mul-int v4, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    int-to-double v4, v2

    mul-int v6, v3, v3

    mul-int v7, p2, p2

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v2, v4

    int-to-double v4, v2

    mul-int v6, v3, v3

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v2, v4

    int-to-double v4, v2

    mul-int v6, p1, p1

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v2, v4

    if-eqz p3, :cond_5

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-static {v4, p1, p2, v5, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz p4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    if-eqz p3, :cond_6

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    return-void

    :cond_4
    if-ltz p2, :cond_1

    if-gez v0, :cond_2

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    int-to-float v5, v2

    int-to-float v6, v1

    invoke-static {v4, p1, p2, v5, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mReverseBackground:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2
.end method
