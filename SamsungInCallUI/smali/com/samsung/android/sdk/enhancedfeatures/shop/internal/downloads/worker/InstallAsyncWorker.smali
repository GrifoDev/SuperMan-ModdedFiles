.class public Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;
.super Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException;,
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InternalHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "DownloadResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker",
        "<TParams;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXCUTERSERVICE:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String;

.field protected static mInstallStatus:I

.field private static sHandler:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InternalHandler;


# instance fields
.field private listener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

.field private mItemId:Ljava/lang/String;

.field private mItemType:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InternalHandler;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$1;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->sHandler:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InternalHandler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->EXCUTERSERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->EXCUTERSERVICE:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;-><init>(Ljava/util/concurrent/ExecutorService;)V

    sput v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mInstallStatus:I

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->listener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mProgress:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mItemType:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mItemId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->notifyToHandlerList(I)V

    return-void
.end method

.method private notifyToHandlerList(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->listener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mItemId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;->updateStatus(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "InstallAsyncWorker.onDownloading()"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mInstallStatus:I

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->sHandler:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InternalHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->onDownloading([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "InstallAsyncWorker.onInstalling()"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mInstallStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    sput v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mInstallStatus:I

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->sHandler:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InternalHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->onInstalling(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getInstallStatus()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mInstallStatus:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mItemType:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    const/4 v2, 0x3

    invoke-super {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onCancelled()V

    const-string v0, "InstallAsyncWorker.onCancelled()"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sput v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mInstallStatus:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->notifyToHandlerList(I)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->unmanage(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V

    return-void
.end method

.method protected varargs onDownloading([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TDownloadResult;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs onInstalling(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDownloadResult;[TParams;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x4

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "InstallAsyncWorker.onPostExecute()"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mInstallStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sput v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mInstallStatus:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->notifyToHandlerList(I)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->unmanage(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V

    goto :goto_0

    :cond_1
    sput v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mInstallStatus:I

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->notifyToHandlerList(I)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->notifyExtra(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onPreExecute()V

    const-string v0, "InstallAsyncWorker.onPreExecute()"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->manage(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V

    return-void
.end method

.method protected onProgressUpdate(Ljava/lang/Integer;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onProgressUpdate(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->listener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->mItemId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;->onProgress(Ljava/lang/String;I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->onProgressUpdate(Ljava/lang/Integer;)V

    return-void
.end method
