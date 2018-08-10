.class Lcom/sec/android/cover/neoncover/NeonCoverController$2;
.super Ljava/lang/Object;
.source "NeonCoverController.java"

# interfaces
.implements Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMissedCallsCountChanged(IIZI)V
    .locals 0

    return-void
.end method

.method public onUnreadMessagesCountChanged(IIZI)V
    .locals 4

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMissedMessagesCountChanged oldCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " newCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$2;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
