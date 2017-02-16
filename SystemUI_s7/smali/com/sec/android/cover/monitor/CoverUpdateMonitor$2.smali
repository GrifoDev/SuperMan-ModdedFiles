.class Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;
.super Landroid/os/Handler;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap33(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap2(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap26(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap27(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap23(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap16(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap4(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap25(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap10(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap24(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap15(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap3(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap13(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap12(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap35(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;II)V

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap34(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;II)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap8(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap11(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap5(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap9(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap22(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap21(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap14(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap18(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap19(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap20(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap32(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap7(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;I)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap17(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_0

    :goto_1
    invoke-static {v2, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap6(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1f
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap30(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap28(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_2
    invoke-static {v2, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap31(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_22
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap0(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-static {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-wrap29(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_1
        :pswitch_17
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1a
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method
