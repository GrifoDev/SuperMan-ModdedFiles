.class Lcom/android/systemui/recents/views/TaskStackView$7;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v1, v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v2, v2, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToStack(II)V

    return-void
.end method
