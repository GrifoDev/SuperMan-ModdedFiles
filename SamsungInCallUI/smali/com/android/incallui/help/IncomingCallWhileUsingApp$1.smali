.class Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/IncomingCallWhileUsingApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$008(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$100(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V

    const/16 v0, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$1;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-virtual {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
