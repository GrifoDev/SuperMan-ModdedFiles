.class Lcom/samsung/android/animation/SemSweepListAnimator$1$1;
.super Ljava/lang/Object;
.source "SemSweepListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepListAnimator$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v2, v2, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
