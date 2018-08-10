.class Lcom/android/systemui/ExpandHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;

.field final synthetic val$expand:Z

.field final synthetic val$scaledView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/ExpandHelper$2;->val$expand:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-boolean v2, p0, Lcom/android/systemui/ExpandHelper$2;->mCancelled:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v2}, Lcom/android/systemui/ExpandHelper;->-get0(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper$2;->val$expand:Z

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v2}, Lcom/android/systemui/ExpandHelper;->-get1(Lcom/android/systemui/ExpandHelper;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v2}, Lcom/android/systemui/ExpandHelper;->-get6(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$ViewScaler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/ExpandableView;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    :cond_1
    sget-object v4, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/ExpandHelper$2;->val$expand:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const-string/jumbo v2, "1123"

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v3}, Lcom/android/systemui/ExpandHelper;->-get2(Lcom/android/systemui/ExpandHelper;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "Two finger swipe"

    :goto_1
    invoke-static {v4, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v2}, Lcom/android/systemui/ExpandHelper;->-get0(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v2}, Lcom/android/systemui/ExpandHelper;->-get5(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_2
    const-string/jumbo v2, "1121"

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const-string/jumbo v2, "1124"

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "1122"

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "One finger swipe"

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v2}, Lcom/android/systemui/ExpandHelper;->-get0(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/android/systemui/ExpandHelper$Callback;->setExpansionCancelled(Landroid/view/View;)V

    goto :goto_2
.end method
