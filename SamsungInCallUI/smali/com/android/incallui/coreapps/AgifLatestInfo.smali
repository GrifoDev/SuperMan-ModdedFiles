.class public Lcom/android/incallui/coreapps/AgifLatestInfo;
.super Ljava/lang/Object;


# instance fields
.field mImageReceivedTime:J

.field mStartTime:J

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 5

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mStartTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mUrl:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mImageReceivedTime:J

    iput-wide p1, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mStartTime:J

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mUrl:Ljava/lang/String;

    iget-wide v0, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mStartTime:J

    iput-wide v0, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mImageReceivedTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mImageReceivedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
