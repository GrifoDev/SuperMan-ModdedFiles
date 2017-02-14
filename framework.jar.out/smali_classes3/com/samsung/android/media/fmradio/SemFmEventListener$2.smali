.class Lcom/samsung/android/media/fmradio/SemFmEventListener$2;
.super Landroid/os/Handler;
.source "SemFmEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/SemFmEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onChannelFound(J)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanStarted()V

    goto :goto_0

    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [J

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0, v8}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanStopped([J)V

    goto :goto_0

    :pswitch_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [J

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0, v8}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onScanFinished([J)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioEnabled()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0, v11}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDisabled(I)V

    goto :goto_0

    :pswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onTuned(J)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onHeadsetConnected()V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onHeadsetDisconnected()V

    goto :goto_0

    :pswitch_9
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v0, v9, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v0, v9, v6

    check-cast v0, Ljava/lang/String;

    aget-object v1, v9, v13

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v1, v12, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, v12, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, v12, v13

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v12, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v12, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v12, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioTextPlusReceived(IIIIII)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    aget-object v0, v10, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v10, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemEnabled()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRadioDataSystemDisabled()V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onAlternateFrequencyStarted()V

    goto/16 :goto_0

    :pswitch_f
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onAlternateFrequencyReceived(J)V

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onTuned(J)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onVolumeLocked()V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/media/fmradio/SemFmEventListener;->onRecordingFinished()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_a
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method
