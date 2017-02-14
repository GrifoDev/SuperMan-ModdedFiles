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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;

    iput-object p2, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method notify(FJ)V
    .locals 2

    iput-wide p2, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mListener:Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;->animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V

    return-void
.end method

.method public setUniformf(Ljava/lang/String;[FI)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap2(JLjava/lang/String;[FI)V

    return-void
.end method

.method public setUniformi(Ljava/lang/String;[II)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap3(JLjava/lang/String;[II)V

    return-void
.end method
