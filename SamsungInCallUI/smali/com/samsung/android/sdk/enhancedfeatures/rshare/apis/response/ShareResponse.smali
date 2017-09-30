.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;
.super Ljava/lang/Object;


# instance fields
.field private mContentToken:Ljava/lang/String;

.field private mContentTokenExpiryTime:J

.field private mContentUri:Ljava/lang/String;

.field private mContentUrls:[Ljava/lang/String;

.field private mContentsTokenDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mContentsTotalToUpload:I

.field private mDirectory:Ljava/lang/String;

.field private mExpiryTime:J

.field private mFolderOrsUrl:Ljava/lang/String;

.field private mFolderToken:Ljava/lang/String;

.field private mFolderTokenExpiryTime:J

.field private mGroupId:Ljava/lang/String;

.field private mLocalPath:Ljava/lang/String;

.field private mPushStatusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mReqWhat:I

.field private mRequestToken:J

.field private mShareCode:Ljava/lang/String;

.field private mShareId:J

.field private mShareIds:[Ljava/lang/Long;

.field private mTimeStamp:Ljava/lang/Long;

.field private mUrl:Ljava/lang/String;

.field private mUrls:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentToken:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTokenExpiryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentTokenExpiryTime:J

    return-wide v0
.end method

.method public getContentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getContentsTokenDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentsTokenDetails:Ljava/util/List;

    return-object v0
.end method

.method public getContentsTotalToUpload()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentsTotalToUpload:I

    return v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mExpiryTime:J

    return-wide v0
.end method

.method public getFolderOrsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderOrsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderTokenExpiryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderTokenExpiryTime:J

    return-wide v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPushStatusList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mPushStatusList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestToken()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getShareCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareCode:Ljava/lang/String;

    return-object v0
.end method

.method public getShareId()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getShareIds()[Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareIds:[Ljava/lang/Long;

    return-object v0
.end method

.method public getShareType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mReqWhat:I

    return v0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrls()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mUrls:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method public initCreatePublicFolderTokenResponse(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentToken:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mExpiryTime:J

    return-void
.end method

.method public initDeleteShareResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentToken:Ljava/lang/String;

    return-void
.end method

.method public initDownloadStartedResponse(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    return-void
.end method

.method public initFileDownloadedResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mLocalPath:Ljava/lang/String;

    return-void
.end method

.method public initPreparingShareResponse(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    return-void
.end method

.method public initRemoveDirectoryResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mDirectory:Ljava/lang/String;

    return-void
.end method

.method public initServerTimeStampResponse(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public initShareStartedResponse(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    return-void
.end method

.method public initUploadCompletedResponse(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    return-void
.end method

.method public setContentToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentToken:Ljava/lang/String;

    return-void
.end method

.method public setContentTokenExpiryTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentTokenExpiryTime:J

    return-void
.end method

.method public setContentUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentUri:Ljava/lang/String;

    return-void
.end method

.method public setContentUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentUrls:[Ljava/lang/String;

    return-void
.end method

.method public setContentsTokenDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentsTokenDetails:Ljava/util/List;

    return-void
.end method

.method public setContentsTotalToUpload(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentsTotalToUpload:I

    return-void
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mDirectory:Ljava/lang/String;

    return-void
.end method

.method public setExpiryTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mExpiryTime:J

    return-void
.end method

.method public setFolderOrsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderOrsUrl:Ljava/lang/String;

    return-void
.end method

.method public setFolderToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderToken:Ljava/lang/String;

    return-void
.end method

.method public setFolderTokenExpiryTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderTokenExpiryTime:J

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setPushStatusList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareMessagePushStatus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mPushStatusList:Ljava/util/ArrayList;

    return-void
.end method

.method public setRequestToken(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    return-void
.end method

.method public setShareCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareCode:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    return-void
.end method

.method public setShareIds([Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareIds:[Ljava/lang/Long;

    return-void
.end method

.method public setShareType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mReqWhat:I

    return-void
.end method

.method public setTimeStamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrls([Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mUrls:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mUserData:Landroid/os/Bundle;

    return-void
.end method
