.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;->getReqId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;->getMemberId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->deleteGroupMembers(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->start()V

    return-void
.end method
