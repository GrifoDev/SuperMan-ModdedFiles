.class Landroid/hardware/fingerprint/FingerprintManager$2;
.super Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockoutReset(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$powerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "lockoutResetCallback"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$2$1;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-direct {v2, p0, v0, v3}, Landroid/hardware/fingerprint/FingerprintManager$2$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;Landroid/os/PowerManager$WakeLock;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
