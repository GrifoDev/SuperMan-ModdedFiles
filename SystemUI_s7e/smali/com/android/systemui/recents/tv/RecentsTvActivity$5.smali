.class Lcom/android/systemui/recents/tv/RecentsTvActivity$5;
.super Ljava/lang/Object;
.source "RecentsTvActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/RecentsTvActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$5;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$5;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-get1(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$5;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-get1(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$5;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-get1(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$5;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-get2(Lcom/android/systemui/recents/tv/RecentsTvActivity;)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void
.end method
