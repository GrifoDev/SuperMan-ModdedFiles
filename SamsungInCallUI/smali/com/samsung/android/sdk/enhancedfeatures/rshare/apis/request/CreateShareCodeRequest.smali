.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mContentsCount:I

.field private mDescription:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->mAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->mContentsCount:I

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->mTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->mContentsCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->mTitle:Ljava/lang/String;

    return-object v0
.end method
