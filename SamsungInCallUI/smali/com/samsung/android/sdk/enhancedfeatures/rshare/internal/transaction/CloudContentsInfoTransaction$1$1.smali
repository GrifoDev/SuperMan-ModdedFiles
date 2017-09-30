.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;

.field final synthetic val$res:Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1$1;->val$res:Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokensResponse;->getUpdated_public_token_list()[Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;-><init>()V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->setPath(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;->getRevision()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->setRevision(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;->getExpiry_time()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->setExpiredTime(Ljava/lang/Long;)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;->getPublic_token()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->setPublicToken(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;->getAuth_code()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->setAuthCode(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/file/io/UpdatePublicTokenData;->getPublic_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->setPublicUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->setChildren([Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1$1;->this$1:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CloudContentsInfoTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;)V

    return-void
.end method
