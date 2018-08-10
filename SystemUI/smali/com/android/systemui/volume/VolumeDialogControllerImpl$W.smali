.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;
.super Landroid/os/Handler;
.source "VolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "W"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get4()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-set4(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-set4(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap10(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap11(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap15(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap18(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/Condition;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap14(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/service/notification/Condition;)V

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_4

    :goto_3
    invoke-static {v3, v4, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap16(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_3

    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onLayoutDirectionChanged(I)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap17(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap13(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5

    :goto_4
    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap12(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_4

    :pswitch_c
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap21(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap19(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap9(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap20(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .end packed-switch
.end method
