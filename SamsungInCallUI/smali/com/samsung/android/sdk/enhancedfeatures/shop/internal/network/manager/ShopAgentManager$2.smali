.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$2;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->getCategoryList(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

.field final synthetic val$callback:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$2;->val$callback:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 8

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_2

    check-cast p2, Lcom/samsung/android/sdk/ssf/shop/io/CategoryList;

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/shop/io/CategoryList;->categories:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/shop/io/Category;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/response/Category;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/response/Category;-><init>()V

    iget v4, v0, Lcom/samsung/android/sdk/ssf/shop/io/Category;->categoryid:I

    iput v4, v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/response/Category;->categoryid:I

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/shop/io/Category;->title:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/shop/io/Category;->title:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/Category;->title:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/shop/io/ItemTitle;

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/response/ItemTitle;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/response/ItemTitle;-><init>()V

    iget-object v7, v0, Lcom/samsung/android/sdk/ssf/shop/io/ItemTitle;->lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/response/ItemTitle;->setLanguage(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/ItemTitle;->value:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/response/ItemTitle;->setValue(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$2;->val$callback:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;->onSuccess(Ljava/util/ArrayList;)V

    :goto_2
    return-void

    :cond_2
    const-string v0, "getCategoryList error"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$2;->val$callback:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iget-object v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;->onError(ILjava/lang/String;)V

    goto :goto_2
.end method
