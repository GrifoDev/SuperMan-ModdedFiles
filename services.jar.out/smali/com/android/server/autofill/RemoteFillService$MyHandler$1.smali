.class final Lcom/android/server/autofill/RemoteFillService$MyHandler$1;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$MyHandler;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$MyHandler$1;->val$this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$MyHandler$1;->val$this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->-get5(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not handling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$MyHandler$1;->val$this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v2}, Lcom/android/server/autofill/RemoteFillService;->-get3(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$MyHandler$1;->val$this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->-wrap5(Lcom/android/server/autofill/RemoteFillService;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$MyHandler$1;->val$this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->-wrap4(Lcom/android/server/autofill/RemoteFillService;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$MyHandler$1;->val$this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->-wrap7(Lcom/android/server/autofill/RemoteFillService;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$MyHandler$1;->val$this$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-static {v1, v0}, Lcom/android/server/autofill/RemoteFillService;->-wrap6(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
