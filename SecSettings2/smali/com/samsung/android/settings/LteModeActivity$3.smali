.class Lcom/samsung/android/settings/LteModeActivity$3;
.super Landroid/os/Handler;
.source "LteModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/LteModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/LteModeActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/LteModeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/LteModeActivity$3;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "LteModeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KKK handler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity$3;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/LteModeActivity;->-get3(Lcom/samsung/android/settings/LteModeActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity$3;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/LteModeActivity;->-wrap0(Lcom/samsung/android/settings/LteModeActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity$3;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/LteModeActivity;->-get3(Lcom/samsung/android/settings/LteModeActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity$3;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/LteModeActivity;->-get3(Lcom/samsung/android/settings/LteModeActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity$3;->this$0:Lcom/samsung/android/settings/LteModeActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/LteModeActivity;->-wrap0(Lcom/samsung/android/settings/LteModeActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
