.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;",
        "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mHash:Ljava/lang/String;

.field private mOriginUri:Landroid/net/Uri;

.field private mTargetCid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mTargetCid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mHash:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mOriginUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->mFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mContentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->mContentType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->mTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->mState:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent$State;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mFileSize:I

    iput v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;->mFileSize:I

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile;

    move-result-object v0

    return-object v0
.end method

.method public setHash(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mHash:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginUri(Landroid/net/Uri;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mOriginUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setTargetCid(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudFile$Builder;->mTargetCid:Ljava/lang/String;

    return-object p0
.end method
