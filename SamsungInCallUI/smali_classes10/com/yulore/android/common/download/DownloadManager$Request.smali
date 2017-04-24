.class public Lcom/yulore/android/common/download/DownloadManager$Request;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/android/common/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final NETWORK_ALL:I = 0x4

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_WIFI:I = 0x2


# instance fields
.field private mAllowedNetworkTypes:I

.field private mDescription:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mRoamingAllowed:Z

.field private mSaveDir:Ljava/io/File;

.field private mSaveName:Ljava/lang/String;

.field private mShowNotification:Z

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mShowNotification:Z

    iput-boolean v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mRoamingAllowed:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    return-void
.end method


# virtual methods
.method public getAllowedNetworkTypes()I
    .locals 1

    iget v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mSaveDir:Ljava/io/File;

    return-object v0
.end method

.method public getSaveName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mSaveName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowedOverRoaming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mRoamingAllowed:Z

    return v0
.end method

.method public isShowRunningNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mShowNotification:Z

    return v0
.end method

.method public setAllowedNetworkTypes(I)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0

    iput p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    return-object p0
.end method

.method public setAllowedOverRoaming(Z)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0

    iput-boolean p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mRoamingAllowed:Z

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setSaveDir(Ljava/io/File;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mSaveDir:Ljava/io/File;

    return-object p0
.end method

.method public setSaveName(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mSaveName:Ljava/lang/String;

    return-object p0
.end method

.method public setShowRunningNotification(Z)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0

    iput-boolean p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mShowNotification:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mUrl:Ljava/lang/String;

    return-object p0
.end method
