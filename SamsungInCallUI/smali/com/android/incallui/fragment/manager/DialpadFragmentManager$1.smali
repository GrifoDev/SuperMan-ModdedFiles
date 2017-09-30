.class Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/manager/DialpadFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-static {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->access$000(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-static {v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->access$000(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/DialpadFragment;->restoreDtmfText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-static {v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->access$100(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/fragment/DialpadFragment;->restorePreviouslyProcessedTime(J)V

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    invoke-static {v0, v4}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->access$002(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iput-object v4, v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
