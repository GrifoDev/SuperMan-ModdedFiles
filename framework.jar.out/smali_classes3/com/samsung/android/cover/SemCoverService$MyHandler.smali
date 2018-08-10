.class final Lcom/samsung/android/cover/SemCoverService$MyHandler;
.super Landroid/os/Handler;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/SemCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_COVER_APP_COVERED:I = 0x3

.field static final MSG_SYSTEM_READY:I = 0x1

.field static final MSG_UPDATE_COVER_STATE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cover/SemCoverService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cover/SemCoverService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v1}, Lcom/samsung/android/cover/SemCoverService;->onSystemReady()V

    goto :goto_0

    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v2}, Lcom/samsung/android/cover/SemCoverService;->-get0(Lcom/samsung/android/cover/SemCoverService;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v2}, Lcom/samsung/android/cover/SemCoverService;->onCoverAttached()V

    iget-object v2, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v2, v1}, Lcom/samsung/android/cover/SemCoverService;->-set0(Lcom/samsung/android/cover/SemCoverService;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/SemCoverService;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/SemCoverService;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v1}, Lcom/samsung/android/cover/SemCoverService;->-get0(Lcom/samsung/android/cover/SemCoverService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v1}, Lcom/samsung/android/cover/SemCoverService;->onCoverDetached()V

    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v1, v2}, Lcom/samsung/android/cover/SemCoverService;->-set0(Lcom/samsung/android/cover/SemCoverService;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/samsung/android/cover/SemCoverService;->onCoverAppCovered(Z)I

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
