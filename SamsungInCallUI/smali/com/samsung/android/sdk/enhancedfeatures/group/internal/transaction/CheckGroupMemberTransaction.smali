.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CheckGroupMembersListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CheckGroupMembersListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CheckGroupMembersListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;->getMembers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;

    new-instance v3, Lcom/samsung/android/sdk/ssf/group/io/MemberId;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ssf/group/io/MemberId;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/MemberId;->id:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/ssf/group/io/MemberListRequest;

    invoke-direct {v3, v1}, Lcom/samsung/android/sdk/ssf/group/io/MemberListRequest;-><init>(Ljava/util/List;)V

    :goto_1
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;->getReqId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->checkGroupMembers(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Lcom/samsung/android/sdk/ssf/group/io/MemberListRequest;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void

    :cond_1
    move-object v3, v6

    goto :goto_1
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CheckGroupMembersListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CheckGroupMembersListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->start()V

    return-void
.end method
