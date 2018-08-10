.class Lcom/android/server/am/TaskPersister$PairedTaskWriteQueueItem;
.super Lcom/android/server/am/TaskPersister$WriteQueueItem;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairedTaskWriteQueueItem"
.end annotation


# instance fields
.field final mTask:Lcom/android/server/am/PairedRecentTasks;


# direct methods
.method constructor <init>(Lcom/android/server/am/PairedRecentTasks;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$WriteQueueItem;)V

    iput-object p1, p0, Lcom/android/server/am/TaskPersister$PairedTaskWriteQueueItem;->mTask:Lcom/android/server/am/PairedRecentTasks;

    return-void
.end method
