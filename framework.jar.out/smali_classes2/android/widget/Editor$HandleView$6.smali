.class Landroid/widget/Editor$HandleView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;

.field final synthetic val$drawableTargetHeight:I

.field final synthetic val$drawableTargetWidth:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;II)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;
    .param p2, "val$drawableTargetWidth"    # I
    .param p3, "val$drawableTargetHeight"    # I

    .prologue
    .line 5200
    iput-object p1, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    iput p2, p0, Landroid/widget/Editor$HandleView$6;->val$drawableTargetWidth:I

    iput p3, p0, Landroid/widget/Editor$HandleView$6;->val$drawableTargetHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 5217
    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    iget v1, p0, Landroid/widget/Editor$HandleView$6;->val$drawableTargetWidth:I

    iget v2, p0, Landroid/widget/Editor$HandleView$6;->val$drawableTargetHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$HandleView;->updateDrawableBounds(II)V

    .line 5218
    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 5219
    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 5220
    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-set1(Landroid/widget/Editor$HandleView;Z)Z

    .line 5215
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 5205
    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5207
    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5209
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5210
    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->-set1(Landroid/widget/Editor$HandleView;Z)Z

    .line 5211
    iget-object v0, p0, Landroid/widget/Editor$HandleView$6;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->showImmediately()V

    .line 5202
    return-void
.end method
