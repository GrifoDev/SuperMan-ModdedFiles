.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private article_id:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private meta_key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->article_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->meta_key:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mReqId:I

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mUserData:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->deleteArticleMetaData(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 1

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    if-nez p4, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mReqId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mUserData:Ljava/lang/Object;

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->article_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->meta_key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->start()V

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;->getReqId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mReqId:I

    invoke-virtual {p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;->getUserData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->mUserData:Ljava/lang/Object;

    goto :goto_0
.end method
