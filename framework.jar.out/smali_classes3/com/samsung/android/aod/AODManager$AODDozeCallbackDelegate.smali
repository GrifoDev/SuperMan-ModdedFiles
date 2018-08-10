.class Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;
.super Lcom/samsung/android/aod/IAODDozeCallback$Stub;
.source "AODManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODDozeCallbackDelegate"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/aod/AODManager$AODDozeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/aod/AODManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/aod/AODManager;Lcom/samsung/android/aod/AODManager$AODDozeCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->this$0:Lcom/samsung/android/aod/AODManager;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p1, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$3;-><init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;Lcom/samsung/android/aod/AODToast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDozeAcquired()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$1;-><init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDozeReleased()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate$2;-><init>(Lcom/samsung/android/aod/AODManager$AODDozeCallbackDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
