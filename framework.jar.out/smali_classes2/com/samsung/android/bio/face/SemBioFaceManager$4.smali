.class Lcom/samsung/android/bio/face/SemBioFaceManager$4;
.super Lcom/samsung/android/bio/face/IFaceServiceLockoutResetCallback$Stub;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;->addLockoutResetCallback(Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field final synthetic val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

.field final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/PowerManager;Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p2, "val$powerManager"    # Landroid/os/PowerManager;
    .param p3, "val$callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/IFaceServiceLockoutResetCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockoutReset(J)V
    .locals 4
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4;->val$powerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "lockoutResetCallback"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 1566
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1567
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/bio/face/SemBioFaceManager$4$1;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

    invoke-direct {v2, p0, v0, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$4$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$4;Landroid/os/PowerManager$WakeLock;Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1564
    return-void
.end method
