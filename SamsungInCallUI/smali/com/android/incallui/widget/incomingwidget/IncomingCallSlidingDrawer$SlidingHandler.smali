.class Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;-><init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$SlidingHandler;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$1000(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
