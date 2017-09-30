.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataRequest;->setValue(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;->getCommentId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;->getReqId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mUserData:Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->updateCommentMetaData(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->start()V

    return-void
.end method
