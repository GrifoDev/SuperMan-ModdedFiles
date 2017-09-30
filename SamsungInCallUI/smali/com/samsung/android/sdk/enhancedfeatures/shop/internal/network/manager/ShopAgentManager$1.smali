.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->getItemList(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;->onSuccess()V

    return-void
.end method
