.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest$Builder;
    }
.end annotation


# instance fields
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

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mRequestToken:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mCloudContentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mCloudContentList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mRequestToken:I

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mUserData:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mUploadDirectory:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCloudContentList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mCloudContentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestToken()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mRequestToken:I

    return v0
.end method

.method public getUploadDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mUploadDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsFromSamsungCloudRequest;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method
