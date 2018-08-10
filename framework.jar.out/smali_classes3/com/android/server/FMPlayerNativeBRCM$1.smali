.class Lcom/android/server/FMPlayerNativeBRCM$1;
.super Ljava/lang/Object;
.source "FMPlayerNativeBRCM.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNativeBRCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMPlayerNativeBRCM;


# direct methods
.method constructor <init>(Lcom/android/server/FMPlayerNativeBRCM;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " onServiceConnected() name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v2, p2}, Lcom/android/server/FMPlayerNativeBRCM;->initService(Landroid/os/IBinder;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "Unable to create connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get5()Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;

    iget-object v3, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-direct {v2, v3, v5}, Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;-><init>(Lcom/android/server/FMPlayerNativeBRCM;Lcom/android/server/FMPlayerNativeBRCM$FmReceiverCallback;)V

    invoke-static {v2}, Lcom/android/server/FMPlayerNativeBRCM;->-set4(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get4()Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    move-result-object v2

    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get5()Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;->registerCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/FMPlayerNativeBRCM;->-set1(Z)Z

    :try_start_1
    iget-object v2, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNativeBRCM;->notify_unlock()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/android/server/FMPlayerNativeBRCM;->-get1()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "onServiceConnected() : on again"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/FMPlayerNativeBRCM;->-set1(Z)Z

    iget-object v2, p0, Lcom/android/server/FMPlayerNativeBRCM$1;->this$0:Lcom/android/server/FMPlayerNativeBRCM;

    invoke-static {v2}, Lcom/android/server/FMPlayerNativeBRCM;->-wrap0(Lcom/android/server/FMPlayerNativeBRCM;)J

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "Error registering callback handler"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "FMPlayerNative_brcm"

    const-string/jumbo v3, "ServiceConnection() InterruptedException ::"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FMPlayerNative_brcm"

    const-string/jumbo v1, "onServiceDisconnected :: disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/FMPlayerNativeBRCM;->-set3(Lcom/broadcom/fm/fmreceiver/IFmReceiverService;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    invoke-static {v2}, Lcom/android/server/FMPlayerNativeBRCM;->-set4(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    return-void
.end method
