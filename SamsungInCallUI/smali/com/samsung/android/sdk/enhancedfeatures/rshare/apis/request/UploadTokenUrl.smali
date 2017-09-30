.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadTokenUrl;
.super Ljava/lang/Object;


# instance fields
.field private mTag:Ljava/lang/String;

.field private mUploadTokenUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadTokenUrl;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadTokenUrl;->mUploadTokenUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadTokenUrl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadTokenUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadTokenUrl;->mUploadTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadTokenUrl;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setUploadTokenUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadTokenUrl;->mUploadTokenUrl:Ljava/lang/String;

    return-void
.end method
