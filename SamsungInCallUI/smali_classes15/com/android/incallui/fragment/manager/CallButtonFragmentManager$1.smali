.class Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$1;
.super Landroid/os/Handler;
.source "CallButtonFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$1;->this$0:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardUi;->setAMView(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_0
    .end packed-switch
.end method
