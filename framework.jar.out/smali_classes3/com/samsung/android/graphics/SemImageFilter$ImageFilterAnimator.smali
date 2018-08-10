.class public final Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImageFilterAnimator"
.end annotation


# instance fields
.field private final mAnimationListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

.field private final mAnimator:Lcom/samsung/android/graphics/SemImageFilter$Animator;

.field private final mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNativeImageFilter:J

.field final synthetic this$0:Lcom/samsung/android/graphics/SemImageFilter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mAnimationListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mAnimator:Lcom/samsung/android/graphics/SemImageFilter$Animator;

    iput-object p3, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    iput-object p4, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mAnimationListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mAnimationListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator$2;-><init>(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAnimationFrameRequest(FJ)V
    .locals 2

    iput-wide p2, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mAnimator:Lcom/samsung/android/graphics/SemImageFilter$Animator;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/graphics/SemImageFilter$Animator;->animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V

    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mAnimationListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator$1;-><init>(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemImageFilter;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setUniformf(Ljava/lang/String;[FI)V
    .locals 6

    array-length v5, p2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;[FIII)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap3(JLjava/lang/String;[FIII)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;[II)V
    .locals 6

    array-length v5, p2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformi(Ljava/lang/String;[IIII)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;[IIII)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap4(JLjava/lang/String;[IIII)V

    return-void
.end method

.method public setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    invoke-virtual {p1}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap5(JIF)V

    return-void
.end method
