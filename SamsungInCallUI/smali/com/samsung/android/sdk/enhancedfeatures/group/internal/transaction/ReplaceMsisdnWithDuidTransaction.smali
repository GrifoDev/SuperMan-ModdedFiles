.class public Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ReplaceMsisdnWithDuidListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ReplaceMsisdnWithDuidListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ReplaceMsisdnWithDuidListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberRequest;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberRequest;->member_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/sdk/ssf/group/io/GroupMemberRequest;->type:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;->getReqId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;->getUserData()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/group/GroupManager;->replaceMsisdnWithDuid(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/group/io/GroupMemberRequest;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ReplaceMsisdnWithDuidListener;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ReplaceMsisdnWithDuidListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->start()V

    return-void
.end method
