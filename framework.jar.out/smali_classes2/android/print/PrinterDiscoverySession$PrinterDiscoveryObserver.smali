.class public final Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;
.super Landroid/print/IPrinterDiscoveryObserver$Stub;
.source "PrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterDiscoverySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrinterDiscoveryObserver"
.end annotation


# instance fields
.field private final mWeakSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/print/PrinterDiscoverySession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/print/PrinterDiscoverySession;)V
    .locals 1

    invoke-direct {p0}, Landroid/print/IPrinterDiscoveryObserver$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;->mWeakSession:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .locals 4

    iget-object v1, p0, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;->mWeakSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/print/PrinterDiscoverySession;->-get0(Landroid/print/PrinterDiscoverySession;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .locals 4

    iget-object v1, p0, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;->mWeakSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/print/PrinterDiscoverySession;->-get0(Landroid/print/PrinterDiscoverySession;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
