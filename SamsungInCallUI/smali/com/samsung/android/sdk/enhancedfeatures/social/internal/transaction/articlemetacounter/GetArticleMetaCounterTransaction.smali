.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private article_id:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private member_list:Z

.field private meta_key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 8

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->article_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->meta_key:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->member_list:Z

    iget v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mReqId:I

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mUserData:Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->getArticleMetaCounter(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;)V
    .locals 1

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;

    if-nez p5, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mReqId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mUserData:Ljava/lang/Object;

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->article_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->meta_key:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->member_list:Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->start()V

    return-void

    :cond_0
    invoke-virtual {p5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;->getReqId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mReqId:I

    invoke-virtual {p5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;->getUserData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->mUserData:Ljava/lang/Object;

    goto :goto_0
.end method
