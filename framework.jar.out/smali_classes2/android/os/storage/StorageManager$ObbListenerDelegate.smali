.class Landroid/os/storage/StorageManager$ObbListenerDelegate;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mObbEventListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/storage/OnObbStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final nonce:I

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I
    .locals 1

    iget v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    return v0
.end method

.method constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V
    .locals 2

    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/storage/StorageManager;->-wrap0(Landroid/os/storage/StorageManager;)I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->-get0(Landroid/os/storage/StorageManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;-><init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getListener()Landroid/os/storage/OnObbStateChangeListener;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/OnObbStateChangeListener;

    return-object v0
.end method

.method sendObbStateChanged(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
