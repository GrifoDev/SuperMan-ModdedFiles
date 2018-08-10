.class Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;
.super Landroid/os/Handler;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DPIHandler"
.end annotation


# instance fields
.field private final mDirectPenInput:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/directpeninput/SemDirectPenInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;->mDirectPenInput:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$DPIHandler;->mDirectPenInput:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/directpeninput/SemDirectPenInput;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap5(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
