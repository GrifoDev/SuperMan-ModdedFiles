.class Landroid/widget/Editor$HandleView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-set1(Landroid/widget/Editor$HandleView;Z)Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->-set0(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get2(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get0(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-set1(Landroid/widget/Editor$HandleView;Z)Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->-set0(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get3(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get6(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$HandleView;->-set3(Landroid/widget/Editor$HandleView;Z)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v2}, Landroid/widget/Editor$HandleView;->-set1(Landroid/widget/Editor$HandleView;Z)Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView$9;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
