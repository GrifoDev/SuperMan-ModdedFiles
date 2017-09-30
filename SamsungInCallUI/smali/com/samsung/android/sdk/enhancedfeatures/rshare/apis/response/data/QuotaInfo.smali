.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;
.super Ljava/lang/Object;


# instance fields
.field private byteUsage:J

.field private timeStamp:J

.field private totalQuota:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->byteUsage:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->timeStamp:J

    return-wide v0
.end method

.method public getTotalQuota()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->totalQuota:J

    return-wide v0
.end method

.method public setByteUsage(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->byteUsage:J

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->timeStamp:J

    return-void
.end method

.method public setTotalQuota(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->totalQuota:J

    return-void
.end method
