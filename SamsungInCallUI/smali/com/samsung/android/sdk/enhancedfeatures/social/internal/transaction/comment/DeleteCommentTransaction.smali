.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private comment_id:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->comment_id:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mReqId:I

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mUserData:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->deleteComment(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 1

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    if-nez p3, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mReqId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mUserData:Ljava/lang/Object;

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->comment_id:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->start()V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;->getReqId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mReqId:I

    invoke-virtual {p3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;->getUserData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->mUserData:Ljava/lang/Object;

    goto :goto_0
.end method
