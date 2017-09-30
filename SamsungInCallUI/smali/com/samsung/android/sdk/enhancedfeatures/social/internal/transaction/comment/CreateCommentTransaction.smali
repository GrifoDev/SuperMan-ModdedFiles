.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getArticleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->setArticleId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->setComment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getPermissionSetId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->setPermissionSetId(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->setParentId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getPushNotification()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->setPushNotification(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/social/io/MetaData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/social/io/MetaData;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaData;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaData;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->setMetaData(Lcom/samsung/android/sdk/ssf/social/io/MetaData;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->setMetaKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->setValue(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->getOnlyOnce()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;->setOnlyOnce(Z)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->setMetaCounter(Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;)V

    :cond_1
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->getReqId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mUserData:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->createComment(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->start()V

    return-void
.end method
