.class public interface abstract Lcom/android/systemui/recents/views/ITaskStackView;
.super Ljava/lang/Object;
.source "ITaskStackView.java"


# virtual methods
.method public abstract cancelAllTaskViewAnimations()V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
.end method

.method public abstract getFocusedTask()Lcom/android/systemui/recents/model/Task;
.end method

.method public abstract getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
.end method

.method public abstract getStack()Lcom/android/systemui/recents/model/TaskStack;
.end method

.method public abstract getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.end method

.method public abstract getTaskViews()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end method

.method public getView()Landroid/view/View;
    .locals 0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public abstract onReload(Z)V
.end method

.method public abstract setSystemInsets(Landroid/graphics/Rect;)V
.end method

.method public abstract setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V
.end method

.method public abstract startLayoutTypeChangeExitAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
.end method
