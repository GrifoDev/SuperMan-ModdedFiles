.class public final Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageFilterAnimator"
.end annotation


# instance fields
.field private final mInterpolator:Landroid/animation/TimeInterpolator;

.field private final mListener:Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;

.field private mNativeImageFilter:J


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;
    .param p2, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;

    .line 694
    iput-object p2, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 692
    return-void
.end method


# virtual methods
.method notify(FJ)V
    .locals 2
    .param p1, "fraction"    # F
    .param p2, "nativeImageFilter"    # J

    .prologue
    .line 706
    iput-wide p2, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    .line 707
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;->animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V

    .line 705
    return-void
.end method

.method public setUniformf(Ljava/lang/String;[FI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 698
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap2(JLjava/lang/String;[FI)V

    .line 697
    return-void
.end method

.method public setUniformi(Ljava/lang/String;[II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 702
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap3(JLjava/lang/String;[II)V

    .line 701
    return-void
.end method
