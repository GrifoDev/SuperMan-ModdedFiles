.class Lcom/android/incallui/AnswerPresenter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V

    iget-object v1, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/incallui/AnswerPresenter;->access$000(Lcom/android/incallui/AnswerPresenter;Lcom/android/incallui/Call;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/AnswerPresenter;->access$000(Lcom/android/incallui/AnswerPresenter;Lcom/android/incallui/Call;Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/AnswerUi;->updateSpamCallRejectMsg(Lcom/android/incallui/Call;)V

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/incallui/AnswerPresenter;->access$000(Lcom/android/incallui/AnswerPresenter;Lcom/android/incallui/Call;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/incallui/AnswerPresenter;->access$000(Lcom/android/incallui/AnswerPresenter;Lcom/android/incallui/Call;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
