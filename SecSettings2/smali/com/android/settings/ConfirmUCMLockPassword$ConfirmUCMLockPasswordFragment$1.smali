.class Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;
.super Landroid/os/Handler;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mTester:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap7(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
