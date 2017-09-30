.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# static fields
.field private static final BUNDLE_SET_CONTENT_TAG_FROM_SDK:Ljava/lang/String; = "BUNDLE_SET_CONTENT_TAG_FROM_SDK"

.field private static final NO_WRITE_IN_DB:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UploadContentsFromSamsungCloudTransaction"


# instance fields
.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mIndex:I

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

.field private mMaxSize:I

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

.field private mShareItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mTransactionId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const-wide/16 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->initTransaction(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;J)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->initTransaction(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;J)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;ILandroid/os/Bundle;Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->makeResponse(ILandroid/os/Bundle;Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->isFinalRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->sendOnSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->requestServer()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mTransactionId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    return-object v0
.end method

.method private initTransaction(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;J)V
    .locals 3

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mShareItems:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mIndex:I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->getCloudContentList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mMaxSize:I

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p3

    :cond_0
    iput-wide p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mTransactionId:J

    return-void
.end method

.method private isFinalRequest()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mMaxSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeResponse(ILandroid/os/Bundle;Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;-><init>()V

    const-string v1, "BUNDLE_SET_CONTENT_TAG_FROM_SDK"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setTimestamp(J)V

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setOid(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setType(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setSize(J)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setPath(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getRevision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setRevision(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setPublicUrl(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setAuthCode(Ljava/lang/String;)V

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setRequestToken(J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setTag(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;-><init>()V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;->setWebUrl(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;->setAuthCode(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;->setTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mShareItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private requestServer()V
    .locals 8

    const/4 v7, 0x1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->getCloudContentList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;->getCloudInfo()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->getMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->getUserData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v6, "BUNDLE_SET_CONTENT_TAG_FROM_SDK"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;->getSize()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;->setSize(I)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;->setHash(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;->setContent_type(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->getRequestToken()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setReqId(I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setPublishUrl(Z)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;->getTargetCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setTargetCid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setInsertFolder(Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->getUploadDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setFolderName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setListener(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setUserData(Landroid/os/Bundle;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setBody(Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest$Body;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mTransactionId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;->setRequestTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/file/FileManager;->linkFile(Lcom/samsung/android/sdk/ssf/file/io/LinkFileRequest;)V

    return-void
.end method

.method private sendOnSuccess(Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mShareItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setItems(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->getRequestToken()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setRequestToken(J)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setData(Landroid/os/Bundle;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stop(IILjava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->cancel()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Fail to UploadContentsFromSamsungCloudTransaction, st=%d r=%d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->getRequestToken()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$5;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$5;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_0
    const-string v1, "UploadContentsFromSamsungCloudTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x191

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->cancel()V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    const-string v0, "linkfile canceled"

    const-string v1, "UploadContentsFromSamsungCloudTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "unable to authenticate user"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsFromSamsungCloudTransaction;->requestServer()V

    goto :goto_0
.end method
