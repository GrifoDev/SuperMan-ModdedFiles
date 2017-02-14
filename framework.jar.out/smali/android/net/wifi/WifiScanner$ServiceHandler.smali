.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiScanner;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap0(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :pswitch_1
    return-void

    :pswitch_2
    const-string/jumbo v3, "WifiScanner"

    const-string/jumbo v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    invoke-static {v3, v5}, Landroid/net/wifi/WifiScanner;->-set0(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    return-void

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1

    :pswitch_3
    return-void

    :pswitch_4
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    :goto_0
    return-void

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$OperationResult;

    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    iget v3, v2, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    iget-object v4, v2, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-void

    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_8
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onPeriodChanged(I)V

    return-void

    :pswitch_9
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onFound([Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_a
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onLost([Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_b
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onChanging([Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_c
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onQuiescence([Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_d
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_e
    check-cast v0, Landroid/net/wifi/WifiScanner$PnoScanListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$PnoScanListener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11002
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27005
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_3
        :pswitch_3
        :pswitch_e
    .end packed-switch
.end method
