.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRequestToken:J

.field private mUploadContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;->mUploadContentList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;->mUploadDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addContent(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;->mUploadContentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;->mUploadContentList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;->mUploadDirectory:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;->mRequestToken:J

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;J)J

    return-object v0
.end method

.method public setRequestToken(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;->mRequestToken:J

    return-void
.end method

.method public setUploadDirectory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;->mUploadDirectory:Ljava/lang/String;

    return-void
.end method
