.class public final Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
.super Landroid/print/IPrintJobStateChangeListener$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintJobStateChangeListenerWrapper"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/print/PrintManager$PrintJobStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintJobStateChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/print/PrintManager$PrintJobStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1321
    invoke-direct {p0}, Landroid/print/IPrintJobStateChangeListener$Stub;-><init>()V

    .line 1323
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 1324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 1322
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1340
    return-void
.end method

.method public getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager$PrintJobStateChangeListener;

    return-object v0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 1329
    iget-object v3, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 1330
    .local v1, "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 1331
    .local v2, "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1332
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1333
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1334
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1335
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1328
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    return-void
.end method
