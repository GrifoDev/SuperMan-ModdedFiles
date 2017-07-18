.class Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;
.super Ljava/lang/Object;
.source "CellPositioner.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget v4, v4, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->mode:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget-boolean v4, v4, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->repeating:Z

    if-eqz v4, :cond_0

    move v1, v5

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget v4, v4, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaX:F

    mul-float/2addr v4, v1

    sub-float v6, v5, v1

    iget-object v7, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget v7, v7, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->initDeltaX:F

    mul-float/2addr v6, v7

    add-float v2, v4, v6

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget v4, v4, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->finalDeltaY:F

    mul-float/2addr v4, v1

    sub-float/2addr v5, v1

    iget-object v6, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget v6, v6, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->initDeltaY:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget-object v4, v4, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget-object v4, v4, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->child:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;

    iget-object v4, v4, Lcom/android/launcher2/CellPositioner$ReorderPreviewAnimation;->this$0:Lcom/android/launcher2/CellPositioner;

    invoke-static {v4}, Lcom/android/launcher2/CellPositioner;->access$200(Lcom/android/launcher2/CellPositioner;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->invalidate()V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method
