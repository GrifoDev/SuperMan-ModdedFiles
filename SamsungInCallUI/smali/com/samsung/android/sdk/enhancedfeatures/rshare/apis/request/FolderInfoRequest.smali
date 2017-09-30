.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;
    }
.end annotation


# instance fields
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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mGroupId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mStartFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mContentCount:I

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mDeleted:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mRevision:I

    return p1
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mFolderorFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mFolderPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mModifiedAfter:J

    return-wide p1
.end method


# virtual methods
.method public getContentCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mContentCount:I

    return v0
.end method

.method public getContentStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mStartFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderorFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mFolderorFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedAfter()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mModifiedAfter:J

    return-wide v0
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mRevision:I

    return v0
.end method

.method public isContentDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->mDeleted:Z

    return v0
.end method
