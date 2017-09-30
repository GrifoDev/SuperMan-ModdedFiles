.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v6, 0x0

    new-instance v4, Lcom/samsung/android/sdk/ssf/group/io/GroupUpdateRequest;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/group/io/GroupUpdateRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mAppId:Ljava/lang/String;

    iput-object v0, v4, Lcom/samsung/android/sdk/ssf/group/io/GroupUpdateRequest;->app_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/samsung/android/sdk/ssf/group/io/GroupUpdateRequest;->owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/samsung/android/sdk/ssf/group/io/GroupUpdateRequest;->group_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->getOption()I

    move-result v0

    iput v0, v4, Lcom/samsung/android/sdk/ssf/group/io/GroupUpdateRequest;->option:I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->getMetaData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/samsung/android/sdk/ssf/group/io/GroupUpdateRequest;->meta_data:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->getReqId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->updateGroup(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/group/io/GroupUpdateRequest;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->mAppId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->start()V

    return-void
.end method
