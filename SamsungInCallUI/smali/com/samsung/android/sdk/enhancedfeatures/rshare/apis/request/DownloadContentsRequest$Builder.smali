.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isWifOnly:Z

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadPath:Ljava/lang/String;

.field private mFolderToken:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mOverwrite:Z

.field private mThumb:Ljava/lang/String;

.field private requestToken:J

.field private userData:Landroid/os/Bundle;

.field private wifiDontCare:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadRequest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->requestToken:J

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->isWifOnly:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mOverwrite:Z

    return-void
.end method


# virtual methods
.method public addContent(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadItem;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mContents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mContents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addContents(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadItem;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mContents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mContents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mFolderToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mGroupId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mFolderToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->isWifOnly:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Z)Z

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->wifiDontCare:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Z)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mThumb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->requestToken:J

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;J)J

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->userData:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mOverwrite:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Z)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mDownloadPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mDownloadPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->access$902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Download path is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDownloadPath(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mDownloadPath:Ljava/lang/String;

    return-object p0
.end method

.method public setFolderToken(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mFolderToken:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public setOverwrite(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mOverwrite:Z

    return-object p0
.end method

.method public setRequestToken(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->requestToken:J

    return-object p0
.end method

.method public setThumb(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->mThumb:Ljava/lang/String;

    return-object p0
.end method

.method public setUserData(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->userData:Landroid/os/Bundle;

    return-object p0
.end method
