.class Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;
.super Landroid/os/Handler;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "KnoxTimeoutHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown msg type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->-wrap6(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    invoke-static {v1, v0}, Lcom/android/server/pm/KnoxTimeoutHandler;->-wrap3(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->-wrap2(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->-wrap4(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-static {v0}, Lcom/android/server/pm/KnoxTimeoutHandler;->-wrap5(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    invoke-static {v1, v0}, Lcom/android/server/pm/KnoxTimeoutHandler;->-wrap1(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
