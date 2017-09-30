.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$3;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->getContentTypes(Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

.field final synthetic val$callback:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$3;->val$callback:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 3

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$3;->val$callback:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;

    check-cast p2, Lcom/samsung/android/sdk/ssf/shop/io/ContentTypes;

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/shop/io/ContentTypes;->contents:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;->onSuccess([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "getContentTypes error"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$3;->val$callback:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iget-object v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
