.class Lcom/samsung/android/bio/face/SemBioFaceManager$4$1;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager$4;->onLockoutReset(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$4;

.field final synthetic val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$4;Landroid/os/PowerManager$WakeLock;Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$4;
    .param p2, "val$wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p3, "val$callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

    .prologue
    .line 1567
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$4;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4$1;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1571
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4$1;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$LockoutResetCallback;->onLockoutReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1569
    return-void

    .line 1572
    :catchall_0
    move-exception v0

    .line 1573
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$4$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1572
    throw v0
.end method
