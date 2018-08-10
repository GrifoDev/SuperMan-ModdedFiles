.class Lcom/samsung/android/graphics/SemImageFilter$2;
.super Ljava/lang/Object;
.source "SemImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemImageFilter;->addAnimation(Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;JJ)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/graphics/SemImageFilter;

.field final synthetic val$animationId:I

.field final synthetic val$animationListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

.field final synthetic val$animator:Lcom/samsung/android/graphics/SemImageFilter$Animator;

.field final synthetic val$delay:J

.field final synthetic val$duration:J

.field final synthetic val$interpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;IJJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iput-object p2, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$animator:Lcom/samsung/android/graphics/SemImageFilter$Animator;

    iput-object p3, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$interpolator:Landroid/animation/TimeInterpolator;

    iput-object p4, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$animationListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    iput p5, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$animationId:I

    iput-wide p6, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$duration:J

    iput-wide p8, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$delay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iget-wide v0, v0, Lcom/samsung/android/graphics/SemImageFilter;->mNativeImageFilter:J

    new-instance v2, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iget-object v4, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$animator:Lcom/samsung/android/graphics/SemImageFilter$Animator;

    iget-object v5, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$interpolator:Landroid/animation/TimeInterpolator;

    iget-object v6, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$animationListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;-><init>(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$Animator;Landroid/animation/TimeInterpolator;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;)V

    iget v3, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$animationId:I

    iget-wide v4, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$duration:J

    iget-wide v6, p0, Lcom/samsung/android/graphics/SemImageFilter$2;->val$delay:J

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap1(JLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;IJJ)V

    return-void
.end method
