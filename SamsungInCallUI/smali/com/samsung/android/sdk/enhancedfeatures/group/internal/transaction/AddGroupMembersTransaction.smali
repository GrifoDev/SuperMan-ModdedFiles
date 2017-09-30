.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 8

    const/4 v7, 0x0

    new-instance v4, Lcom/samsung/android/sdk/ssf/group/io/GroupListRequest;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/group/io/GroupListRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/samsung/android/sdk/ssf/group/io/GroupListRequest;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;->getMembers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;->getMembers()Ljava/util/List;

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

    new-instance v3, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;->id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->getOptionalId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;->optional_id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->getPermission()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;->permission:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/ssf/group/io/GroupListRequest;->setMembersList(Ljava/util/List;)V

    :cond_1
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;->getReqId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;->getMemberId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;->getUserData()Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->addGroupMembers(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/group/io/GroupListRequest;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->start()V

    return-void
.end method
