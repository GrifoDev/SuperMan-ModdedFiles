.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mContentsCount:I

.field private mDescription:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;->mContentsCount:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;->mAppName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;->mContentsCount:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;I)I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public setContentsCount(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;->mContentsCount:I

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
