.class Lcom/android/incallui/fragment/EndCallButtonFragment$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/EndCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/EndCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v1, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "EndCallButtonFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->access$000(Lcom/android/incallui/fragment/EndCallButtonFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->access$000(Lcom/android/incallui/fragment/EndCallButtonFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/EndCallButtonFragment;->showDelayedEndCallButtonsLayout()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
