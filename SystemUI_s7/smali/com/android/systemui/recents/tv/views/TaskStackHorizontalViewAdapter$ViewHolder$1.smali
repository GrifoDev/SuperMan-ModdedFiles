.class Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "TaskStackHorizontalViewAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->getRemoveAtListener(ILcom/android/systemui/recents/model/Task;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;->this$1:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    iput-object p2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;->this$1:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->this$0:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder$1;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
