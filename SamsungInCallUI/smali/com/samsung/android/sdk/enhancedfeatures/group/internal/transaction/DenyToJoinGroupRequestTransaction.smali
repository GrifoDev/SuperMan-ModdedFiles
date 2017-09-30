.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DenyGroupRequestListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DenyGroupRequestListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DenyGroupRequestListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Lcom/samsung/android/sdk/ssf/group/io/DenyJoinGroupRequest;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ssf/group/io/DenyJoinGroupRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->getMember_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/DenyJoinGroupRequest;->member_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->getRequester_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/DenyJoinGroupRequest;->requester_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/DenyJoinGroupRequest;->message:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->getReqId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->getGroupId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->denyRequestToJoinGroup(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Lcom/samsung/android/sdk/ssf/group/io/DenyJoinGroupRequest;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DenyGroupRequestListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DenyGroupRequestListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->start()V

    return-void
.end method
