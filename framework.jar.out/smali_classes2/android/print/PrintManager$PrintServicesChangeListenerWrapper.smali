.class public final Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;
.super Landroid/print/IPrintServicesChangeListener$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintServicesChangeListenerWrapper"
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
            "Landroid/print/PrintManager$PrintServicesChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -android_print_PrintManager$PrintServicesChangeListenerWrapper-mthref-0(Landroid/print/PrintManager$PrintServicesChangeListener;)V
    .locals 0

    invoke-interface {p0}, Landroid/print/PrintManager$PrintServicesChangeListener;->onPrintServicesChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrintManager$PrintServicesChangeListener;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/print/IPrintServicesChangeListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onPrintServicesChanged()V
    .locals 3

    iget-object v2, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v2, p0, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager$PrintServicesChangeListener;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/print/-$Lambda$h7xjKnKsfVuRdZMcjh_0GBiXV30$1;

    invoke-direct {v2, v1}, Landroid/print/-$Lambda$h7xjKnKsfVuRdZMcjh_0GBiXV30$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
