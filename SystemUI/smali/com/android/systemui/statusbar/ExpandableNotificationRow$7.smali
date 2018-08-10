.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performRemoveAnim(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->mWasCancelled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->mWasCancelled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get13(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get13(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get13(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->mWasCancelled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineAlpha(F)V

    return-void
.end method
