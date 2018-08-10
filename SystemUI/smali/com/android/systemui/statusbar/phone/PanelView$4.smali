.class Lcom/android/systemui/statusbar/phone/PanelView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation(JFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$collapseWhenFinished:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$4;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$4;->val$collapseWhenFinished:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$4;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$4;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->-set3(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$4;->mCancelled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$4;->val$collapseWhenFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$4;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$4;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
