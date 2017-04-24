.class Lcom/android/incallui/AnswerPresenter$1;
.super Landroid/os/Handler;
.source "AnswerPresenter.java"


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

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

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

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    iget-object v2, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V
    invoke-static {v1, v2, v3}, Lcom/android/incallui/AnswerPresenter;->access$000(Lcom/android/incallui/AnswerPresenter;Lcom/android/incallui/Call;Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
