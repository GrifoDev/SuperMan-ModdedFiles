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
    .locals 8

    const/4 v7, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    const-string/jumbo v5, "ClipboardExService"

    const-string/jumbo v6, "handler msg : default"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/clipboardex/ClipboardExService;->-set1(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get4(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get7(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v7}, Lcom/android/server/clipboardex/ClipboardExService;->-get2(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/sec/clipboard/ClipboardUIManager;->show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/clipboardex/ClipboardExService;->-set1(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get4(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get7(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v7}, Lcom/android/server/clipboardex/ClipboardExService;->-get2(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/clipboardex/ClipboardExService;->-set1(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    const-string/jumbo v5, "ClipboardExService"

    const-string/jumbo v6, "mCBUIManager enter case. MSG_DISMISS_DIALOG"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get4(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/ClipboardUIManager;->dismiss()V

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5, v7}, Lcom/android/server/clipboardex/ClipboardExService;->-set1(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v5, "path"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "extra_path"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.content.clipboard.action.REMOVE_CLIP"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "path"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "extra_path"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v5}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$1;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CLIPBOARD_DELETE_RECEIVER : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
