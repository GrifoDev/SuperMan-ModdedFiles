.class Lcom/android/server/desktopmode/DockManager$2;
.super Ljava/lang/Object;
.source "DockManager.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DockManager;->createDockControlLib(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChargingModeUpdated(Z)V
    .locals 4

    const/16 v3, 0xd4

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConnectedPowerChargerInfoUpdated(III)V
    .locals 3

    const/16 v2, 0xd3

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v1

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDSVersionUpdated(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xe7

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(I)V
    .locals 4

    const/16 v3, 0xdd

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/DockManager$DockHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockHandler;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/desktopmode/DockManager$DockHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager$DockHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
