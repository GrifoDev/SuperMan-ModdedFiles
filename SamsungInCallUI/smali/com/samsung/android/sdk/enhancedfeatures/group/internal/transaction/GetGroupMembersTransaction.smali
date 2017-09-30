.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 8

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->getReqId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->getDisplay()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->getOffset()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;->getUserData()Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->getGroupMembers(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;IILcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->start()V

    return-void
.end method
