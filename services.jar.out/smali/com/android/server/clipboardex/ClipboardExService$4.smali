.class Lcom/android/server/clipboardex/ClipboardExService$4;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboardex/ClipboardExService;->addData(ILcom/samsung/android/content/clipboard/data/SemClipData;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;

.field final synthetic val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field final synthetic val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field final synthetic val$format:I


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/samsung/android/content/clipboard/data/SemClipData;ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iput p3, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$format:I

    iput-object p4, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v11}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get6(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get6(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/clipboardex/ClipboardExService;->-set2(Lcom/android/server/clipboardex/ClipboardExService;Landroid/content/Context;)Landroid/content/Context;

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v11, v7}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iget-object v13, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v13}, Lcom/android/server/clipboardex/ClipboardExService;->-get1(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Lcom/samsung/android/content/clipboard/data/SemClipData;I)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v12}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v12

    const-string/jumbo v13, "CBCT"

    invoke-static {v11, v12, v13}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap7(Lcom/android/server/clipboardex/ClipboardExService;ILjava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap8(Lcom/android/server/clipboardex/ClipboardExService;Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v12}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/clipboardex/ClipboardExService;->-set0(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    const-string/jumbo v11, "ClipboardExService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "add success && KNOX_PASTE_FLAG is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v13}, Lcom/android/server/clipboardex/ClipboardExService;->-get0(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$format:I

    sparse-switch v11, :sswitch_data_0

    :goto_3
    if-eqz v7, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v11, "/data/clipboard/temp/"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string/jumbo v11, "ClipboardExService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No target file...thumFullPath : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    return-void

    :cond_3
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_4
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v11}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_1

    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v10, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {v10}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, ""

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get6(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get6(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromUriData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    :goto_5
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$addItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {v11, v7}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_6
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->-get5(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromUriData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_7
    const-string/jumbo v11, "ClipboardExService"

    const-string/jumbo v12, "Failed to add data."

    invoke-static {v11, v12}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_0
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v9, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, ""

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->HasExtraData()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v9}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    :cond_8
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v11, v4, v1}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap3(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_1
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v10, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {v10}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v6

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v12, 0x0

    invoke-static {v11, v6, v12}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap3(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_2
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->val$data:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getThumbnailImagePath()Ljava/lang/String;

    move-result-object v2

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v12, 0x0

    invoke-static {v11, v2, v12}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap3(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "ClipboardExService"

    const-string/jumbo v12, "Temp preview file of html item will be deleted"

    invoke-static {v11, v12}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
