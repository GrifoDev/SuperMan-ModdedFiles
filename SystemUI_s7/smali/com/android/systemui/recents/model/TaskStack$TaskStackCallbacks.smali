.class public interface abstract Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskStackCallbacks"
.end annotation


# virtual methods
.method public abstract onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
.end method

.method public abstract onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZ)V
.end method

.method public abstract onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
.end method

.method public abstract onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
.end method
