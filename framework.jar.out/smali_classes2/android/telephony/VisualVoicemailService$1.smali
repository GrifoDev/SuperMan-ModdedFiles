.class Landroid/telephony/VisualVoicemailService$1;
.super Landroid/os/Handler;
.source "VisualVoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/VisualVoicemailService;


# direct methods
.method constructor <init>(Landroid/telephony/VisualVoicemailService;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "data_phone_account_handle"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    new-instance v2, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;-><init>(Landroid/os/Messenger;ILandroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v3, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {v3, v2, v0}, Landroid/telephony/VisualVoicemailService;->onCellServiceConnected(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "data_sms"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telephony/VisualVoicemailSms;

    iget-object v3, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {v3, v2, v1}, Landroid/telephony/VisualVoicemailService;->onSmsReceived(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telephony/VisualVoicemailSms;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {v3, v2, v0}, Landroid/telephony/VisualVoicemailService;->onSimRemoved(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-virtual {v3, v2}, Landroid/telephony/VisualVoicemailService;->onStopped(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
