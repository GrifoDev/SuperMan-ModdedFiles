.class final Lcom/android/systemui/volume/VolumeDialogController$W;
.super Landroid/os/Handler;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "W"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

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
    :pswitch_0
    return-void

    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get6(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-set4(Lcom/android/systemui/volume/VolumeDialogController;I)I

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap1(Lcom/android/systemui/volume/VolumeDialogController;II)Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-set4(Lcom/android/systemui/volume/VolumeDialogController;I)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap9(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap10(Lcom/android/systemui/volume/VolumeDialogController;)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap14(Lcom/android/systemui/volume/VolumeDialogController;IZ)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap17(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/Condition;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap13(Lcom/android/systemui/volume/VolumeDialogController;Landroid/service/notification/Condition;)V

    goto :goto_0

    :pswitch_7
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_4

    :goto_3
    invoke-static {v3, v4, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap15(Lcom/android/systemui/volume/VolumeDialogController;IZ)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_3

    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController$C;->onLayoutDirectionChanged(I)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onConfigurationChanged()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap16(Lcom/android/systemui/volume/VolumeDialogController;II)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap12(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5

    :goto_4
    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap11(Lcom/android/systemui/volume/VolumeDialogController;Z)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_4

    :pswitch_d
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->onUserActivityW()V

    goto/16 :goto_0

    :pswitch_e
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap18(Lcom/android/systemui/volume/VolumeDialogController;I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$W;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap19(Lcom/android/systemui/volume/VolumeDialogController;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method
