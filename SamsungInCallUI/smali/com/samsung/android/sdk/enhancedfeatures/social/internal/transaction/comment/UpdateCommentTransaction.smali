.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/UpdateCommentListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/UpdateCommentListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/UpdateCommentListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;->getPermissionSetId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->setPermissionSetId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->setComment(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;->getCommentId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;->getReqId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mUserData:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->updateComment(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;Ljava/lang/String;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/UpdateCommentListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/UpdateCommentListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->start()V

    return-void
.end method
