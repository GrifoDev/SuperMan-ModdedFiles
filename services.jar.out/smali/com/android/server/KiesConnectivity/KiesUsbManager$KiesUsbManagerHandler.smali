.class Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
.super Landroid/os/Handler;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KiesUsbManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const-string/jumbo v2, "KiesUsbManager"

    const-string/jumbo v3, "SCSI -> unknow"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    const-string/jumbo v2, "KiesUsbManager"

    const-string/jumbo v3, "KiesUsbManagerHandler -> UsbMode.online"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    const-string/jumbo v2, "KiesUsbManager"

    const-string/jumbo v3, "KiesUsbManagerHandler -> UsbMode.offline"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "KiesUsbManager"

    const-string/jumbo v3, "KiesUsbManagerHandler -> UsbMode.time_stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string/jumbo v3, "acm"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V

    const-string/jumbo v2, "KiesUsbManager"

    const-string/jumbo v3, "KiesUsbManagerHandler -> UsbMode.time_reset"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string/jumbo v3, "acm"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->-get1(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string/jumbo v3, "mass_storage,acm"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    const-string/jumbo v2, "KiesUsbManager"

    const-string/jumbo v3, "Enabled_ACM -> mass_storage,acm"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->-wrap2(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->-get0()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sget-boolean v2, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->-wrap3(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->-wrap5(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x1388 -> :sswitch_2
        0x1770 -> :sswitch_3
        0x1b58 -> :sswitch_4
        0x1f40 -> :sswitch_5
        0x2328 -> :sswitch_6
        0x2710 -> :sswitch_7
    .end sparse-switch
.end method
