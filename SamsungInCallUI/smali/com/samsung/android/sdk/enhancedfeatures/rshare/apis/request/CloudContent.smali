.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;
.super Ljava/lang/Object;


# instance fields
.field private mCloudInfo:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;->mCloudInfo:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCloudInfo()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;->mCloudInfo:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setCloudInfo(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;->mCloudInfo:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;->mTag:Ljava/lang/String;

    return-void
.end method
