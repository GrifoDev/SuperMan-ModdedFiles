.class final Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "SeslLoaderManager.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;
.implements Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Ljava/lang/Object;

.field mDeliveredData:Z

.field mDestroyed:Z

.field mHaveData:Z

.field final mId:I

.field mListenerRegistered:Z

.field mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

.field mReportNextStart:Z

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;


# virtual methods
.method callOnLoadFinished(Lcom/samsung/android/support/sesl/core/content/SeslLoader;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v2, :cond_1

    :goto_1
    :try_start_0
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;->onLoadFinished(Lcom/samsung/android/support/sesl/core/content/SeslLoader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v2, :cond_3

    :goto_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const-string/jumbo v3, "onLoadFinished"

    iput-object v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SeslLoaderManager"

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v2, :cond_4

    :goto_4
    throw v0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v1, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v1, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_4
.end method

.method destroy()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v3, :cond_1

    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    if-nez v3, :cond_2

    :cond_0
    :goto_1
    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mHaveData:Z

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    if-nez v3, :cond_6

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    if-nez v3, :cond_8

    :goto_3
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Destroying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslLoaderManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v3, :cond_3

    :goto_4
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v3, :cond_4

    :goto_5
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-interface {v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;->onLoaderReset(Lcom/samsung/android/support/sesl/core/content/SeslLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v1, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Resetting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslLoaderManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const-string/jumbo v4, "onLoaderReset"

    iput-object v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_5

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v3, :cond_5

    :goto_6
    throw v0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v1, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v3, :cond_7

    :goto_7
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->reset()V

    goto/16 :goto_2

    :cond_7
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v3, p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->unregisterListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v3, p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->unregisterOnLoadCanceledListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;)V

    goto :goto_7

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->destroy()V

    goto/16 :goto_3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    if-nez v0, :cond_1

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending SeslLoader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method finishRetain()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetaining:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->stop()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Finished Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeslLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Lcom/samsung/android/support/sesl/core/content/SeslLoader;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method reportStart()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Lcom/samsung/android/support/sesl/core/content/SeslLoader;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method retain()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetaining:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeslLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method start()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    if-eqz v0, :cond_5

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    if-nez v0, :cond_6

    :goto_2
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    return-void

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeslLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_9

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->startLoading()V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->registerListener(ILcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->registerOnLoadCanceledListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;)V

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    goto :goto_3
.end method

.method stop()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->DEBUG:Z

    if-nez v0, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeslLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->unregisterListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->unregisterOnLoadCanceledListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->stopLoading()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl$LoaderInfo;->mLoader:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
