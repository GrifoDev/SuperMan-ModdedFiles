.class Lcom/android/incallui/util/SecSimulateCall$1;
.super Landroid/os/Handler;
.source "SecSimulateCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/SecSimulateCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/SecSimulateCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/SecSimulateCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecSimulateCall$1;->this$0:Lcom/android/incallui/util/SecSimulateCall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/util/SecSimulateCall$1;->this$0:Lcom/android/incallui/util/SecSimulateCall;

    const/4 v1, 0x3

    # invokes: Lcom/android/incallui/util/SecSimulateCall;->updateSimulateCallState(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/util/SecSimulateCall;->access$000(Lcom/android/incallui/util/SecSimulateCall;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
