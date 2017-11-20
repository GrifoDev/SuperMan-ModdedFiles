.class Lcom/android/server/audio/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 17

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get9(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-set0(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x2

    if-ne v4, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    const/16 v3, 0x80

    invoke-static {v2, v3, v1}, Lcom/android/server/audio/AudioService;->-wrap9(Lcom/android/server/audio/AudioService;II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x66

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-wrap45(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v9

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v8

    throw v1

    :sswitch_1
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v9

    const/16 v10, 0x65

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v11, v4

    move-object v13, v6

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->-wrap45(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-set5(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->-set6(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap24(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get55(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get55(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    :cond_3
    :goto_3
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get55(Lcom/android/server/audio/AudioService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_4
    :pswitch_0
    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v8

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->-wrap56(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set6(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get55(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->-set32(Lcom/android/server/audio/AudioService;I)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get54(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v16

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get54(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get54(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get54(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v16

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get54(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get54(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v16

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method
