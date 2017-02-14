.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "KiesUsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "connected"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "configured"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "mtp"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "mass_storage"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "ptp"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "sec_charging"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "midi"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, -0x1

    const-string/jumbo v11, "sys.usb.config"

    const-string/jumbo v12, "none"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_Common_EnableSUA"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getUsbMode() -> bCDFS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-nez v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "mass_storage"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "mass_storage,adb"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x1

    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "startCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    if-eqz v7, :cond_5

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v6, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
