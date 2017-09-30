.class Lcom/android/incallui/fragment/AnswerFragment$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iput p2, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->val$VIDEO_STATE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->val$VIDEO_STATE:I

    invoke-virtual {v0, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v0

    :goto_1
    const-string v1, "AnswerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showWaitingCallDialogGSM: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    iget v1, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->val$VIDEO_STATE:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithMerge(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment$10;->val$VIDEO_STATE:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
