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

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mShowNotification:Z

    .line 65
    iput-boolean v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mRoamingAllowed:Z

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 70
    return-void
.end method


# virtual methods
.method public getAllowedNetworkTypes()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mSaveDir:Ljava/io/File;

    return-object v0
.end method

.method public getSaveName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mSaveName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowedOverRoaming()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mRoamingAllowed:Z

    return v0
.end method

.method public isShowRunningNotification()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mShowNotification:Z

    return v0
.end method

.method public setAllowedNetworkTypes(I)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 130
    return-object p0
.end method

.method public setAllowedOverRoaming(Z)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mRoamingAllowed:Z

    .line 138
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mDescription:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setSaveDir(Ljava/io/File;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mSaveDir:Ljava/io/File;

    .line 82
    return-object p0
.end method

.method public setSaveName(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0
    .param p1, "saveName"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mSaveName:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setShowRunningNotification(Z)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mShowNotification:Z

    .line 122
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mTitle:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/yulore/android/common/download/DownloadManager$Request;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yulore/android/common/download/DownloadManager$Request;->mUrl:Ljava/lang/String;

    .line 74
    return-object p0
.end method
