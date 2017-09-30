.class Lcom/android/incallui/fragment/AnswerFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->val$VIDEO_STATE:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->val$VIDEO_STATE:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/incallui/fragment/AnswerFragment$8;->val$VIDEO_STATE:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
