.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterRequest;->setCommentId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterRequest;->setMetaKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterRequest;->setValue(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->getOnlyOnce()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterRequest;->setOnlyOnce(Z)V

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->getReqId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mUserData:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->createCommentMetaCounter(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterRequest;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->start()V

    return-void
.end method
