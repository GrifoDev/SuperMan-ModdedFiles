.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;
    }
.end annotation


# instance fields
.field private mDeletePath:Ljava/lang/String;

.field private mDeletePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupId:Ljava/lang/String;

.field private mNeedToReduceQuota:Z

.field private mPushType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mDeletePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mDeletePaths:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mGroupId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mDeletePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mPushType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;

    return-object p1
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mNeedToReduceQuota:Z

    return p1
.end method


# virtual methods
.method public getDeletePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mDeletePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDeletePaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mDeletePaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mPushType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;

    return-object v0
.end method

.method public isNeedtoReduceQuota()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->mNeedToReduceQuota:Z

    return v0
.end method
