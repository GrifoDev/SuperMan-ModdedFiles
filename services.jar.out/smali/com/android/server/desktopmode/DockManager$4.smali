.class Lcom/android/server/desktopmode/DockManager$4;
.super Ljava/lang/Object;
.source "DockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DockManager;->destroyDockControlLib()V
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

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$4;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$4;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get3(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$4;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/DockManager;->-set0(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$4;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "destroyDockControlLib"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$4;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v0

    const/16 v1, 0x64

    const/16 v2, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$4;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->destroy()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$4;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/DockManager;->-set8(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    :cond_2
    return-void
.end method
