.class Lcom/android/server/clipboardex/ClipboardExService$1;
.super Landroid/os/Handler;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "ClipboardExService"

    const-string/jumbo v5, "handler msg : default"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/clipboardex/ClipboardExService;->-set1(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get4(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get7(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get2(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/sec/clipboard/ClipboardUIManager;->show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/clipboardex/ClipboardExService;->-set1(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get4(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get7(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get2(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/clipboardex/ClipboardExService;->-set1(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    const-string/jumbo v4, "ClipboardExService"

    const-string/jumbo v5, "mCBUIManager enter case. MSG_DISMISS_DIALOG"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get4(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/ClipboardUIManager;->dismiss()V

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4, v6}, Lcom/android/server/clipboardex/ClipboardExService;->-set1(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.content.clipboard.action.REMOVE_CLIP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "path"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v4}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CLIPBOARD_DELETE_RECEIVER : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
