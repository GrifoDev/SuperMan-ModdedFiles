.class Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-wide/16 v4, 0x12c

    const/16 v3, 0x64

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$000(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_7

    const-string v0, "IncomingCallImageHandle"

    const-string v1, "InCallState.NO_CALLS "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_2

    const-string v0, "IncomingCallImageHandle"

    const-string v1, "InCallState.NO_CALLS "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$000(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$100(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$200(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    const-string v0, "sview_cover_redial_call"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "clear_cover_redial_call"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$400(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    :cond_4
    const-string v0, "sview_cover_incall"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "clear_cover_incall"

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$500(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const-wide/16 v2, 0x383

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$000(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$100(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$800(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$900(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1000(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$902(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;I)I

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1000(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$908(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$900(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1100(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$902(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;I)I

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$700(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$1100(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$908(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
