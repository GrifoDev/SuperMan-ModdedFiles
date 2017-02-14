.class Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KNOXReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "KNOXReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap0(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "ClipboardExService"

    const-string/jumbo v7, "null"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get8(Lcom/android/server/clipboardex/ClipboardExService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v6, "ClipboardExService"

    const-string/jumbo v7, "size is null"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    aget v7, v5, v1

    invoke-static {v6, v7}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap4(Lcom/android/server/clipboardex/ClipboardExService;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "enterprise.container.remove.progress"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "enterprise.container.uninstalled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v6, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v6}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Receive intent from KNOX-clipboard : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_5
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " isKnoxTwoEnabled mDataList.size()  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_6
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap1(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap0(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get8(Lcom/android/server/clipboardex/ClipboardExService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaInfo;

    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget v7, v4, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const-string/jumbo v8, "SWITCHED"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/clipboardex/ClipboardExService;->multiUserMode(ILjava/lang/String;)V

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "kiosk container id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_8
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " isKioskEnabled mDataList.size()  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    goto/16 :goto_1
.end method
