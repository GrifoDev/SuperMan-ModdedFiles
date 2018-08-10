.class Lcom/android/server/desktopmode/DockManager$6;
.super Ljava/lang/Object;
.source "DockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DockManager;->createDockFotaLib()V
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

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get8(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    move-result-object v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "createDockFotaLib"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get15(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->-set10(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->-set6(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get14(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v0

    const/16 v1, 0x64

    const/16 v2, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get8(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-get2(Lcom/android/server/desktopmode/DockManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->-get15(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->-get9(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;->requestCreate(Landroid/content/Context;Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V

    :cond_2
    return-void
.end method
