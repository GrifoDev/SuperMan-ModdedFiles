.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;->getInc()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;->setInc(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;->getCancelAction()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;->setCancelAction(Z)V

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;->getArticleId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;->getReqId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;->getUserData()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->updateArticleMetaCounter(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->start()V

    return-void
.end method
