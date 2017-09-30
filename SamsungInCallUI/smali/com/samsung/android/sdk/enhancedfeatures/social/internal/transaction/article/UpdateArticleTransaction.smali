.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/UpdateArticleListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/UpdateArticleListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/UpdateArticleListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->getPermissionSetId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setPermissionSetId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->setGroupId(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->getArticleId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->getReqId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mUserData:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->updateArticle(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/UpdateArticleListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/UpdateArticleListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->mAppId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->start()V

    return-void
.end method
