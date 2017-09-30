.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    if-nez p1, :cond_2

    check-cast p2, Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;

    move-result-object v1

    invoke-static {v0, p3, p2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    check-cast p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v0, p3, p2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    check-cast p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    check-cast p4, Landroid/os/Bundle;

    const-string v0, "extra_download_panel"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    move-result-object v2

    invoke-static {v1, p3, p2, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;ZLcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    check-cast p4, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    const-string v1, "extra_content_type"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "extra_file_type"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    move-result-object v5

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    check-cast p4, Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    iget v7, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_8

    if-eqz p2, :cond_8

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->itemid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->expirytime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->contenturl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->isDownloadedFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    move-object v10, v0

    move v0, v6

    move-object v6, v10

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is Downloaded - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ITEM ID :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", VER: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$100()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested file is already downloaded: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;->updateStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "itemid added to map"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Unknown:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->getFileNameFromContentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v9, v6}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/FileHelper;->getFileDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/helper/DownloadItemDBHelper;->saveInstallItem(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;Ljava/lang/String;JJLjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;->applyBatch(Ljava/util/ArrayList;)[J

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    const-string v1, "extra_content_type"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "extra_file_type"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    move-result-object v5

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    goto/16 :goto_0

    :cond_8
    move-object v10, v0

    move v0, v6

    move-object v6, v10

    goto/16 :goto_1
.end method
