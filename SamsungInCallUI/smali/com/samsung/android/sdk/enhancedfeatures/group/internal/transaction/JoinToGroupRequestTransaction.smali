.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/JoinGroupRequestListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/JoinGroupRequestListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/JoinGroupRequestListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Lcom/samsung/android/sdk/ssf/group/io/JoinGroupRequest;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/group/io/JoinGroupRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->getMember_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/group/io/JoinGroupRequest;->member_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/group/io/JoinGroupRequest;->type:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->getRequester_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/group/io/JoinGroupRequest;->requester_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->getOptional_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/group/io/JoinGroupRequest;->optional_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/group/io/JoinGroupRequest;->message:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->getReqId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;->getUserData()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->requestToJoinGroup(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/group/io/JoinGroupRequest;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/JoinGroupRequestListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/JoinGroupRequestListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->start()V

    return-void
.end method
