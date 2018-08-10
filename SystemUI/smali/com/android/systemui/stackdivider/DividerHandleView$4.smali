.class Lcom/android/systemui/stackdivider/DividerHandleView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerHandleView;->animateDividerHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerHandleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerHandleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView$4;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView$4;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView$4;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView$4;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->-set0(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView$4;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView$4;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    const v2, 0x3fe66666    # 1.8f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->-wrap0(Lcom/android/systemui/stackdivider/DividerHandleView;FZ)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->-set0(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView$4;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->-get0(Lcom/android/systemui/stackdivider/DividerHandleView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/DividerHandleView$4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerHandleView$4$1;-><init>(Lcom/android/systemui/stackdivider/DividerHandleView$4;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView$4;->this$0:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->-get0(Lcom/android/systemui/stackdivider/DividerHandleView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
