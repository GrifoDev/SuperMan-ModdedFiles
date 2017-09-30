.class final Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker$DownloadWorker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker$DownloadWorker;->fileInstallWorker:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker;

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
