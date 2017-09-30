.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;
.super Ljava/lang/Object;


# instance fields
.field private expiredTime:J

.field private id:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->expiredTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiredTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->expiredTime:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->url:Ljava/lang/String;

    return-void
.end method
