.class public Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getDisplayCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setDisplayCount(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getOffset()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setOffset(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getFilter()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setAppId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getSid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setSid(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setOwnerId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getArticleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setArticleId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setCommentId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getMetaKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setMetaKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setParentId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setGroupId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getCreatedSince()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setCreatedSince(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getOrder()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setOrder(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getMetaCounterList()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;->setMetaCounterList(Z)V

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->getReqId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mUserData:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/social/SocialManager;->searchSocial(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/social/io/SearchSocialRequest;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->start()V

    return-void
.end method
