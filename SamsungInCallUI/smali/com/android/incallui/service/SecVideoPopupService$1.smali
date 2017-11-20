.class Lcom/android/incallui/service/SecVideoPopupService$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecVideoPopupService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecVideoPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecVideoPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecVideoPopupService$1;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService$1;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/service/SecVideoPopupService;->access$000(Lcom/android/incallui/service/SecVideoPopupService;Ljava/lang/String;Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService$1;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecVideoPopupService;->access$100(Lcom/android/incallui/service/SecVideoPopupService;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService$1;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecVideoPopupService;->access$200(Lcom/android/incallui/service/SecVideoPopupService;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_1

    const-string v0, "SecVideoPopupService"

    const-string v1, "state == InCallState.NO_CALLS "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SecVideoPopupService"

    const-string v1, "isShowingInCallUi"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService$1;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecVideoPopupService;->access$100(Lcom/android/incallui/service/SecVideoPopupService;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService$1;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    iget-object v1, v1, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService$1;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecVideoPopupService;->access$100(Lcom/android/incallui/service/SecVideoPopupService;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecVideoPopupService$1;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    iget-object v1, v1, Lcom/android/incallui/service/SecVideoPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService$1;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecVideoPopupService;->showCallEndBlink()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
