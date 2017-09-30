.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCloudContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestToken:I

.field private mUploadDirectory:Ljava/lang/String;

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UploadContentsFromSamsungCloudRequest.Builder"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mRequestToken:I

    return-void
.end method


# virtual methods
.method public addCloudContent(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->addCloudContent(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;

    return-object p0
.end method

.method public addCloudContent(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "cloudInfo item is null or empty"

    const-string v1, "UploadContentsFromSamsungCloudRequest.Builder"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mCloudContentList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mCloudContentList:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mCloudContentList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mCloudContentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mCloudContentList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCloudContents count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploadContentsFromSamsungCloudRequest.Builder"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mRequestToken:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;I)I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mUserData:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mUploadDirectory:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Ljava/lang/String;)Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannon build request, cloudContents is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestToken(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mRequestToken:I

    return-object p0
.end method

.method public setUploadDirectory(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mUploadDirectory:Ljava/lang/String;

    return-object p0
.end method

.method public setUserData(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;->mUserData:Landroid/os/Bundle;

    return-object p0
.end method
