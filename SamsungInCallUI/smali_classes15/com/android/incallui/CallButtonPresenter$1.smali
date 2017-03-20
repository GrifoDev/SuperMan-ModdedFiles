.class Lcom/android/incallui/CallButtonPresenter$1;
.super Landroid/os/Handler;
.source "CallButtonPresenter.java"


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
    .param p1, "this$0"    # Lcom/android/incallui/CallButtonPresenter;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter$1;->this$0:Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 103
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const-string v1, "CallButtonPresenter"

    const-string v2, "EVENT_DISPLAY_DIALPAD"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter$1;->this$0:Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonUi;

    .line 107
    .local v0, "ui":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, v3, v3}, Lcom/android/incallui/CallButtonUi;->displayDialpad(ZZ)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
