.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContentCount:I

.field private mDeleted:Z

.field private mFolderPath:Ljava/lang/String;

.field private mFolderorFileName:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mModifiedAfter:J

.field private mRevision:I

.field private mStartFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentInfoRequest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mGroupId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "contentToken or mType is not set"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannon build request, contentToken is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mGroupId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mStartFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mContentCount:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;I)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mDeleted:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Z)Z

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mRevision:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;I)I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mFolderorFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mFolderPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mModifiedAfter:J

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;J)J

    return-object v0
.end method

.method public setContentCount(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mContentCount:I

    return-object p0
.end method

.method public setContentDeletedStatus(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mDeleted:Z

    return-object p0
.end method

.method public setFolderOrFileName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mFolderorFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setFolderPath(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mFolderPath:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public setRevision(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mRevision:I

    return-object p0
.end method

.method public setStartFileName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mStartFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->mModifiedAfter:J

    return-object p0
.end method
