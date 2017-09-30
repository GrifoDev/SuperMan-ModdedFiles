.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;
    }
.end annotation


# static fields
.field public static final REQUEST_TYPE_APP:Ljava/lang/String; = "app"

.field public static final REQUEST_TYPE_CLOUD:Ljava/lang/String; = "cloud"


# instance fields
.field private mContentCount:I

.field private mContentStart:I

.field private mContentToken:Ljava/lang/String;

.field private mReceipientListStatus:Z

.field private mReqId:I

.field private mRequestType:Ljava/lang/String;

.field private mShareCode:Ljava/lang/String;

.field private mToList:Z

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mContentToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mRequestType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mShareCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mUserData:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mContentStart:I

    return p1
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mContentCount:I

    return p1
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mReceipientListStatus:Z

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mToList:Z

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mReqId:I

    return p1
.end method


# virtual methods
.method public getContentCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mContentCount:I

    return v0
.end method

.method public getContentStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mContentStart:I

    return v0
.end method

.method public getContentToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mContentToken:Ljava/lang/String;

    return-object v0
.end method

.method public getReqId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mReqId:I

    return v0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mRequestType:Ljava/lang/String;

    return-object v0
.end method

.method public getShareCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mShareCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method public isRecepientListRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mReceipientListStatus:Z

    return v0
.end method

.method public isToList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->mToList:Z

    return v0
.end method
