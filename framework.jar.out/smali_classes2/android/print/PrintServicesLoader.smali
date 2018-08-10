.class public Landroid/print/PrintServicesLoader;
.super Landroid/content/Loader;
.source "PrintServicesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintServicesLoader$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

.field private final mPrintManager:Landroid/print/PrintManager;

.field private final mSelectionFlags:I


# direct methods
.method static synthetic -wrap0(Landroid/print/PrintServicesLoader;)V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrintManager;Landroid/content/Context;I)V
    .locals 1

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/print/PrintServicesLoader$MyHandler;

    invoke-direct {v0, p0}, Landroid/print/PrintServicesLoader$MyHandler;-><init>(Landroid/print/PrintServicesLoader;)V

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    const/4 v0, 0x3

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    return-void
.end method

.method private queueNewResult()V
    .locals 3

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget v2, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected onForceLoad()V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    return-void
.end method

.method protected onReset()V
    .locals 0

    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->onStopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    new-instance v0, Landroid/print/PrintServicesLoader$1;

    invoke-direct {v0, p0}, Landroid/print/PrintServicesLoader$1;-><init>(Landroid/print/PrintServicesLoader;)V

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/print/PrintManager;->addPrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget v1, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStopLoading()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V

    iput-object v2, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    :cond_0
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
