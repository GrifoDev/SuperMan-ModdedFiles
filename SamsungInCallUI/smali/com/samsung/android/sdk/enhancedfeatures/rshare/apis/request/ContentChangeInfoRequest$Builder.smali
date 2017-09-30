.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContentToken:Ljava/lang/String;

.field private mContentsInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentInfoRequest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;->mContentToken:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "contentToken or mType is not set"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannon build request, contentToken is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;->mContentToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;->mTimestamp:J

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;J)J

    return-object v0
.end method

.method public setContentStart(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;->mTimestamp:J

    return-object p0
.end method

.method public setContentToken(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;->mContentToken:Ljava/lang/String;

    return-object p0
.end method

.method public setListener(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;->mContentsInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest$Builder;->mTimestamp:J

    return-object p0
.end method
