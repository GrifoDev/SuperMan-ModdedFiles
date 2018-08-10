.class Lcom/android/systemui/statusbar/DebugLogView$1;
.super Landroid/os/Handler;
.source "DebugLogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DebugLogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DebugLogView;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogView$1;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DebugLogView;->-get3(Lcom/android/systemui/statusbar/DebugLogView;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogView$1;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DebugLogView;->-get3(Lcom/android/systemui/statusbar/DebugLogView;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogView$1;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DebugLogView;->-get4(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DebugLogView$1;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DebugLogView;->-get4(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/DebugLogView$1;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DebugLogView;->-get3(Lcom/android/systemui/statusbar/DebugLogView;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20171215
        :pswitch_0
    .end packed-switch
.end method
