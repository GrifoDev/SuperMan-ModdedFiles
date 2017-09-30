.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;
.super Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXCUTERSERVICE:Ljava/util/concurrent/ExecutorService;


# instance fields
.field contentType:Ljava/lang/String;

.field context:Landroid/content/Context;

.field itemListDownloadListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;

.field responseEntry:Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->EXCUTERSERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->EXCUTERSERVICE:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;-><init>(Ljava/util/concurrent/ExecutorService;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->running:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->responseEntry:Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->itemListDownloadListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->running:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListContentTypeMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/helper/DownloadItemDBHelper;->removeUninstalledItem()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->responseEntry:Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->responseEntry:Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/shop/io/ItemList;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->installPackagePanel(Lcom/samsung/android/sdk/ssf/shop/io/ItemList;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->responseEntry:Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/shop/io/ItemList;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/helper/DownloadItemDBHelper;->saveItemList(Lcom/samsung/android/sdk/ssf/shop/io/ItemList;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;->applyBatch(Ljava/util/ArrayList;)[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "panel_update_polling_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListContentTypeMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onCancelled()V

    const-string v0, "calling onCancelled"

    const-string v1, "ShopLog"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->responseEntry:Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;->items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->running:Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->itemListDownloadListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;->onSuccess()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->itemListDownloadListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;

    const v1, 0x11171

    const-string v2, "Account Deregistered"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
