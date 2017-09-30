.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# static fields
.field private static final TOKEN_REQ_PUSH:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

.field private mShareMessageRequest:Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;

.field private mShareMessageRequestBuilder:Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Lcom/samsung/android/sdk/ssf/share/io/RecipientData;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->getCountryCallingCode()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;->getIndex()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/samsung/android/sdk/ssf/share/io/RecipientData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mShareMessageRequestBuilder:Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mShareMessageRequestBuilder:Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mShareMessageRequestBuilder:Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->setRecipients(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mShareMessageRequestBuilder:Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest$Builder;->build()Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mShareMessageRequest:Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const-string v0, "start"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mShareMessageRequest:Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;

    if-nez v0, :cond_0

    const-string v0, "request is null"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v6, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v0, 0x7530

    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "EmoShare"

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mShareMessageRequest:Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/MessageShareTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->getGcmPriority()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->shareMessage(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/share/io/ShareMessageRequest;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    goto :goto_0
.end method
