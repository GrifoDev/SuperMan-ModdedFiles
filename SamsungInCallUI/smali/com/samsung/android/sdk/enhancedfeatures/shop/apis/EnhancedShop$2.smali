.class Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "onDeregister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->stopWorkerAll()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->buildShopManager(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->cancelGetItemTask()V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "panel_update_polling_time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;->clearShopData(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public onRegister()V
    .locals 2

    const-string v0, "onRegister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
