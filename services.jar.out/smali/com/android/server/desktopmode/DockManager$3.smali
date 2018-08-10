.class Lcom/android/server/desktopmode/DockManager$3;
.super Ljava/lang/Object;
.source "DockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$dockType:I


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DockManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    iput p2, p0, Lcom/android/server/desktopmode/DockManager$3;->val$dockType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createDockControlLib dockType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/desktopmode/DockManager$3;->val$dockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v0

    const/16 v1, 0x64

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->-get2(Lcom/android/server/desktopmode/DockManager;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/server/desktopmode/DockManager$3;->val$dockType:I

    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager$3;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->-get3(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;-><init>(Landroid/content/Context;ILcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->-set8(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    :cond_1
    return-void
.end method
