.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;->getReqId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;->getUserData()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->getGroupInfo(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->start()V

    return-void
.end method
