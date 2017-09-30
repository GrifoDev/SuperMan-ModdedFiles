.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v5, 0x0

    new-instance v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mAppId:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->app_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mId:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->group_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mOptionalId:Ljava/lang/String;

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->optional_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getOption()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->option:I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getMetaData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->meta_data:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getMembers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;

    if-eqz v0, :cond_0

    new-instance v4, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;->id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->getOptionalId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;->optional_id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->getPermission()I

    move-result v0

    iput v0, v4, Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;->permission:I

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->members:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getServiceId()I

    move-result v0

    iput v0, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->sid:I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->type:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getReqId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;->getUserData()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->createGroup(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mAppId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getOptionalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->mOptionalId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->start()V

    return-void
.end method
