.class public interface abstract Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskCallbacks"
.end annotation


# virtual methods
.method public abstract onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
.end method

.method public abstract onTaskDataUnloaded()V
.end method

.method public abstract onTaskStackIdChanged()V
.end method
