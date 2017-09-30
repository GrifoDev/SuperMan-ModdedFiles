.class Lcom/android/incallui/CallButtonPresenter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter$1;->this$0:Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "CallButtonPresenter"

    const-string v1, "EVENT_DISPLAY_DIALPAD"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter$1;->this$0:Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2, v2}, Lcom/android/incallui/CallButtonUi;->displayDialpad(ZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
