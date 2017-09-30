.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GetUploadedBytesRequest;
.super Ljava/lang/Object;


# instance fields
.field private mUrl:Ljava/lang/String;

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GetUploadedBytesRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GetUploadedBytesRequest;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GetUploadedBytesRequest;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GetUploadedBytesRequest;->mUserData:Landroid/os/Bundle;

    return-void
.end method
