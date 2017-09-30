.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setAppId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getServiceId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setSid(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getPermissionSetId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setPermissionSetId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getPushNotification()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setPushNotification(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setGroupId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/social/io/MetaData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/social/io/MetaData;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaData;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaData;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setMetaData(Lcom/samsung/android/sdk/ssf/social/io/MetaData;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->setMetaKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->setValue(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->getOnlyOnce()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->setOnlyOnce(Z)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setMetaCounter(Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;)V

    :cond_1
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->getReqId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mUserData:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->createArticle(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->mAppId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->start()V

    return-void
.end method
