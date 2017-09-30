.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ResponsePushListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ResponsePushListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ResponsePushListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 8

    const/4 v7, 0x0

    new-instance v4, Lcom/samsung/android/sdk/ssf/group/io/GroupAction;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/group/io/GroupAction;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;->getAction()I

    move-result v0

    iput v0, v4, Lcom/samsung/android/sdk/ssf/group/io/GroupAction;->action:I

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;->getReqId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;->getUserData()Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->responseGroupPushInfo(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/group/io/GroupAction;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ResponsePushListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ResponsePushListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->start()V

    return-void
.end method
