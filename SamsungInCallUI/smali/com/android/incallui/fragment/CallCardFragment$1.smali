.class Lcom/android/incallui/fragment/CallCardFragment$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/CallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/CallCardFragment$1;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "CallCardFragment"

    const-string v1, "reset swap animation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$1;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->resetSwapAnimation()V

    goto :goto_0

    :pswitch_2
    const-string v0, "CallCardFragment"

    const-string v1, "reset merge animation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$1;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->resetMergeAnimation()V

    goto :goto_0

    :pswitch_3
    const-string v0, "CallCardFragment"

    const-string v1, "reset split animation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$1;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->resetSplitAnimation()V

    goto :goto_0

    :pswitch_4
    const-string v0, "CallCardFragment"

    const-string v1, "hide toggling views"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallCardFragment$1;->this$0:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/CallCardFragment;->access$000(Lcom/android/incallui/fragment/CallCardFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
