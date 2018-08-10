.class Lcom/samsung/android/camera/iris/SemIrisManager$4;
.super Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

.field final synthetic val$callback:Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;

.field final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/PowerManager;Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->val$callback:Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;-><init>()V

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

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->val$powerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "lockoutResetCallback"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->-get3(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$4$1;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager$4;->val$callback:Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;

    invoke-direct {v2, p0, v0, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$4$1;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager$4;Landroid/os/PowerManager$WakeLock;Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
