.class Lcom/android/incallui/fragment/AnswerFragment$8;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/AnswerFragment;

.field final synthetic val$VIDEO_STATE:I


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/AnswerFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iput p2, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->val$VIDEO_STATE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    iget v1, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->val$VIDEO_STATE:I

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitingCallDialog: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshRunning(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isCshRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->val$VIDEO_STATE:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
