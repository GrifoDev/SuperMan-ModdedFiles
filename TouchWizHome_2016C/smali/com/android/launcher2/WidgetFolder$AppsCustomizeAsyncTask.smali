.class Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;
.super Landroid/os/AsyncTask;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WidgetFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsCustomizeAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;",
        ">;"
    }
.end annotation


# instance fields
.field private mCancelRequested:Z

.field final page:I

.field private threadPriority:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->mCancelRequested:Z

    iput p1, p0, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->page:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->threadPriority:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p1, v2

    # getter for: Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;
    invoke-static {v0}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1700(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-interface {v0, p0, v1}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;->run(Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    aget-object v0, p1, v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->doInBackground([Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 1

    # getter for: Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;
    invoke-static {p1}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1800(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;->run(Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->onPostExecute(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    return-void
.end method

.method public requestCancel(Z)Z
    .locals 3

    # getter for: Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/WidgetFolder;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCancel Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->mCancelRequested:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method setThreadPriority(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->threadPriority:I

    return-void
.end method

.method syncThreadPriority()V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->threadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method

.method public wasCancelRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->mCancelRequested:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
