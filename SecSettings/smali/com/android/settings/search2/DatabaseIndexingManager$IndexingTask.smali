.class public Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;
.super Landroid/os/AsyncTask;
.source "DatabaseIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search2/DatabaseIndexingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndexingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mCallback:Lcom/android/settings/search/IndexingCallback;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/search2/DatabaseIndexingManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/search2/DatabaseIndexingManager;Lcom/android/settings/search/IndexingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->this$0:Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->mCallback:Lcom/android/settings/search/IndexingCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->this$0:Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-virtual {v0}, Lcom/android/settings/search2/DatabaseIndexingManager;->performIndexing()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->this$0:Lcom/android/settings/search2/DatabaseIndexingManager;

    iget-object v0, v0, Lcom/android/settings/search2/DatabaseIndexingManager;->mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->mCallback:Lcom/android/settings/search/IndexingCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->mCallback:Lcom/android/settings/search/IndexingCallback;

    invoke-interface {v0}, Lcom/android/settings/search/IndexingCallback;->onIndexingFinished()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->this$0:Lcom/android/settings/search2/DatabaseIndexingManager;

    iget-object v0, v0, Lcom/android/settings/search2/DatabaseIndexingManager;->mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
