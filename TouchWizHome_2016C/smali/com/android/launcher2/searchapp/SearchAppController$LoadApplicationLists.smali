.class Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;
.super Landroid/os/AsyncTask;
.source "SearchAppController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/SearchAppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadApplicationLists"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/searchapp/SearchAppController;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/searchapp/SearchAppController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/searchapp/SearchAppController;Lcom/android/launcher2/searchapp/SearchAppController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;-><init>(Lcom/android/launcher2/searchapp/SearchAppController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppController;->access$100(Lcom/android/launcher2/searchapp/SearchAppController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    iget-object v2, v2, Lcom/android/launcher2/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    iget-object v3, v3, Lcom/android/launcher2/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    # invokes: Lcom/android/launcher2/searchapp/SearchAppController;->getApplicationsWithClass(Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/searchapp/SearchAppController;->access$200(Lcom/android/launcher2/searchapp/SearchAppController;Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V

    const-string v0, "SearchAppController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQueryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppController;->mQueryCount:I
    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppController;->access$300(Lcom/android/launcher2/searchapp/SearchAppController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLoadingCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I
    invoke-static {v2}, Lcom/android/launcher2/searchapp/SearchAppController;->access$400(Lcom/android/launcher2/searchapp/SearchAppController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppController;->mQueryCount:I
    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppController;->access$300(Lcom/android/launcher2/searchapp/SearchAppController;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I
    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppController;->access$400(Lcom/android/launcher2/searchapp/SearchAppController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppController;->mQueryCount:I
    invoke-static {v1}, Lcom/android/launcher2/searchapp/SearchAppController;->access$300(Lcom/android/launcher2/searchapp/SearchAppController;)I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->IsLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppController;->setMoreAppsListState(Z)V

    :goto_0
    const-string v0, "Executed"

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppController;->setMoreAppsListState(Z)V

    goto :goto_0
.end method

.method public onCancelled()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    # invokes: Lcom/android/launcher2/searchapp/SearchAppController;->sendUpdateDataIntent()V
    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppController;->access$500(Lcom/android/launcher2/searchapp/SearchAppController;)V

    sget-boolean v0, Lcom/android/launcher2/searchapp/SearchAppController;->reRunTask:Z

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    new-instance v1, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    invoke-direct {v1, v2}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;-><init>(Lcom/android/launcher2/searchapp/SearchAppController;)V

    iput-object v1, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->this$0:Lcom/android/launcher2/searchapp/SearchAppController;

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sput-boolean v3, Lcom/android/launcher2/searchapp/SearchAppController;->reRunTask:Z

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
