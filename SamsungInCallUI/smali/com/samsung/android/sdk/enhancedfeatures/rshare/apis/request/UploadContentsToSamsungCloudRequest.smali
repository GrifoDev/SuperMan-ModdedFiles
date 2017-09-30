.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest$Builder;
    }
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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->mUploadContentList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->mUploadDirectory:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->mRequestToken:J

    return-wide p1
.end method


# virtual methods
.method public getRequestToken()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->mRequestToken:J

    return-wide v0
.end method

.method public getUploadContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->mUploadContentList:Ljava/util/List;

    return-object v0
.end method

.method public getUploadDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsToSamsungCloudRequest;->mUploadDirectory:Ljava/lang/String;

    return-object v0
.end method
