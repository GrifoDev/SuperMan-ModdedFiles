.class Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
.super Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthCallbackInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string/jumbo v0, "CoverManager.DreamyNfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-get0(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-get0(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
