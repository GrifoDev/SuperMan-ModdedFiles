.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 8

    const/4 v5, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;->setAppId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->getServiceId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;->setSid(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;->setGroupId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->getArticles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->getArticles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->getArticles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    new-instance v4, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getPermissionSetId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setPermissionSetId(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getPushNotification()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setPushNotification(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/samsung/android/sdk/ssf/social/io/MetaData;

    invoke-direct {v6}, Lcom/samsung/android/sdk/ssf/social/io/MetaData;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/ssf/social/io/MetaData;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/ssf/social/io/MetaData;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setMetaData(Lcom/samsung/android/sdk/ssf/social/io/MetaData;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;

    invoke-direct {v6}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->getValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->setValue(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->getOnlyOnce()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->setOnlyOnce(Z)V

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setMetaCounter(Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;)V

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;->setArticles(Ljava/util/List;)V

    :cond_3
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->getReqId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mUserData:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->createMultiple(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoRequest;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->mAppId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->start()V

    return-void
.end method
