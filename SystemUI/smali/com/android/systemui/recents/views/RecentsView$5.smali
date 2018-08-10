.class Lcom/android/systemui/recents/views/RecentsView$5;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->setRecentsContainerView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_views_RecentsView$5_56007()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->-set0(Lcom/android/systemui/recents/views/RecentsView;Z)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "RecentsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick(CloseAllButton) :: mBlockTwiceTouchOnCloseAllButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get0(Lcom/android/systemui/recents/views/RecentsView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get0(Lcom/android/systemui/recents/views/RecentsView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->-set0(Lcom/android/systemui/recents/views/RecentsView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get3(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/ITaskStackView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get3(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/ITaskStackView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/recents/views/ITaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScrolling()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$5;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$7;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
