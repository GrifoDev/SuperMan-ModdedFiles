.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;
    }
.end annotation


# instance fields
.field private mFileDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;->mUserData:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;->mFileDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFileData(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;->mFileDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFileDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest$FileData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;->mFileDataList:Ljava/util/List;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LookUpFilesInServerRequest;->mUserData:Landroid/os/Bundle;

    return-void
.end method
