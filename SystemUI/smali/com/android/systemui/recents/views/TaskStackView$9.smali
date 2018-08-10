.class Lcom/android/systemui/recents/views/TaskStackView$9;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->launchTask(Lcom/android/systemui/recents/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->val$task:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
