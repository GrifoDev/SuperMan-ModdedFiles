.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Lcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/util/EncryptUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;->setType(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;->getReqId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;->getUserData()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->getGroupsByGUID(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->start()V

    return-void
.end method
