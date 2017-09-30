.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_MOBILE_DEVICE:I

.field public static final REQUEST_TYPE_NEW:I


# instance fields
.field protected mAppName:Ljava/lang/String;

.field protected mContentCount:I

.field protected mContentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mDescription:Ljava/lang/String;

.field protected mDirName:Ljava/lang/String;

.field protected mDurationTime:Ljava/lang/String;

.field protected mGroupID:Ljava/lang/String;

.field protected mMediaSize:I

.field private mRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mShareId:J

.field protected mShareItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShareType:I

.field protected mSilencePush:Z

.field private mTitle:Ljava/lang/String;

.field protected requestToken:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "remoteshare"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mAppName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mSilencePush:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->setShareType(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mRecipientList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method private setShareType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mShareType:I

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mContentCount:I

    return v0
.end method

.method public getContentItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mContentItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mDurationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mGroupID:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mMediaSize:I

    return v0
.end method

.method public getRecipientList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mRecipientList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestToken()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->requestToken:J

    return-wide v0
.end method

.method public getShareId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mShareId:J

    return-wide v0
.end method

.method public getShareItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mShareItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mShareType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mDirName:Ljava/lang/String;

    return-object v0
.end method

.method public isSilencePush()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mSilencePush:Z

    return v0
.end method
