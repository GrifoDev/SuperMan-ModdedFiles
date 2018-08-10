.class Lcom/android/server/desktopmode/DesktopModeHwManager$6;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeHwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$6;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$6;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    const-string/jumbo v4, "penInsert"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-set1(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsSPenDetached="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$6;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get10(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$6;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$6;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get10(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onSPenStateChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
