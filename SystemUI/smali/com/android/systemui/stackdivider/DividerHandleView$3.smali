.class Lcom/android/systemui/stackdivider/DividerHandleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerHandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerHandleView;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView$3;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->-set0(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
