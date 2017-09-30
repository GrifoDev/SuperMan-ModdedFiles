.class Lcom/android/incallui/fragment/AnswerFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/AnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerFragment$6;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$6;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$6;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$6;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$6;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
