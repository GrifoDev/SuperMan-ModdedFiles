.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateExpirationTimeRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateExpirationTimeRequest$Builder;
    }
.end annotation


# instance fields
.field private expiry:J

.field private groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateExpirationTimeRequest;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateExpirationTimeRequest;->expiry:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateExpirationTimeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateExpirationTimeRequest;->groupId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getExpiry()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateExpirationTimeRequest;->expiry:J

    return-wide v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateExpirationTimeRequest;->groupId:Ljava/lang/String;

    return-object v0
.end method
