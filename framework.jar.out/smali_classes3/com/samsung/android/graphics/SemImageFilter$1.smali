.class Lcom/samsung/android/graphics/SemImageFilter$1;
.super Ljava/lang/Object;
.source "SemImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemImageFilter;->addAnimation(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/graphics/SemImageFilter;

.field final synthetic val$delay:J

.field final synthetic val$duration:J

.field final synthetic val$id:I

.field final synthetic val$interpolator:Landroid/animation/TimeInterpolator;

.field final synthetic val$listener:Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;Landroid/animation/TimeInterpolator;IJJ)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iput-object p2, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$listener:Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;

    iput-object p3, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$interpolator:Landroid/animation/TimeInterpolator;

    iput p4, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$id:I

    iput-wide p5, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$duration:J

    iput-wide p7, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$delay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iget-wide v0, v0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    new-instance v2, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$listener:Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;

    iget-object v4, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$interpolator:Landroid/animation/TimeInterpolator;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;-><init>(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$id:I

    iget-wide v4, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$duration:J

    iget-wide v6, p0, Lcom/samsung/android/graphics/SemImageFilter$1;->val$delay:J

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap0(JLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;IJJ)V

    return-void
.end method
