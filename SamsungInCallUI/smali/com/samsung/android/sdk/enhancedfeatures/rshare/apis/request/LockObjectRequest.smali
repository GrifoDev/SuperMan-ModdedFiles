.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest$Builder;
    }
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private folderPath:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private lockKey:Ljava/lang/String;

.field private rcode:I

.field private requestToken:J

.field private rmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->folderPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->fileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->lockKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->requestToken:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->groupId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestToken()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->requestToken:J

    return-wide v0
.end method

.method public getfileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getfolderPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->folderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getlockKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->lockKey:Ljava/lang/String;

    return-object v0
.end method

.method public getrcode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/LockObjectRequest;->rcode:I

    return v0
.end method
