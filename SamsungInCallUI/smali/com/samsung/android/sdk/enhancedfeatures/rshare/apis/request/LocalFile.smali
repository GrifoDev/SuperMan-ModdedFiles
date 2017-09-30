.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile$Builder;
    }
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field private mInputStream:Ljava/io/InputStream;

.field private mIsUseInputStream:Z

.field private mUploadTokenUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContent;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mInputStream:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mUploadTokenUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mIsUseInputStream:Z

    return p1
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mUploadTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isUseInputStream()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mIsUseInputStream:Z

    return v0
.end method

.method public setUploadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LocalFile;->mUploadTokenUrl:Ljava/lang/String;

    return-void
.end method
