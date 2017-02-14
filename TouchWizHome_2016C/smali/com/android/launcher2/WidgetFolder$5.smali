.class Lcom/android/launcher2/WidgetFolder$5;
.super Ljava/lang/Object;
.source "WidgetFolder.java"

# interfaces
.implements Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WidgetFolder;->prepareLoadWidgetPreviewsTask(Landroid/widget/GridLayout;ILjava/util/List;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WidgetFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WidgetFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder$5;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 4

    # getter for: Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/WidgetFolder;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running B on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " page: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->page:I
    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1400(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " task: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " items: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;
    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1500(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$5;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/WidgetFolder;->access$1600(Lcom/android/launcher2/WidgetFolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->wasCancelRequested()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->page:I
    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1400(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cleanup(Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, " NULL "

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$5;->this$0:Lcom/android/launcher2/WidgetFolder;

    const-string v1, "prepareLoadWidgetPreviewsTask"

    # invokes: Lcom/android/launcher2/WidgetFolder;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    invoke-static {v0, v1, p2}, Lcom/android/launcher2/WidgetFolder;->access$1200(Lcom/android/launcher2/WidgetFolder;Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->page:I
    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1400(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cleanup(Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->page:I
    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1400(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cleanup(Ljava/lang/String;Z)V

    :cond_3
    throw v0
.end method
