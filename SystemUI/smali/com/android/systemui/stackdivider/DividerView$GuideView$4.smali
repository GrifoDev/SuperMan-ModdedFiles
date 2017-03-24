.class Lcom/android/systemui/stackdivider/DividerView$GuideView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView$GuideView;->dismiss(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get4(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/FocusedFrameView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get4(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/FocusedFrameView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setGuideView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get0(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get5(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/DividerHandleView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get0(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get2(Lcom/android/systemui/stackdivider/DividerView$GuideView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get5(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/DividerHandleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get7(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0, v2}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-set0(Lcom/android/systemui/stackdivider/DividerView$GuideView;Z)Z

    return-void
.end method
