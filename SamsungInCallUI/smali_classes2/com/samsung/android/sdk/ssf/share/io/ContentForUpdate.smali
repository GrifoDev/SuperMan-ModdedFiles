.class public Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;
.super Ljava/lang/Object;


# instance fields
.field private content_type:Ljava/lang/String;

.field private original:Ljava/lang/String;

.field private update_type:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UpdateType should be any of these [0,1,2]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->update_type:J

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->original:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->content_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->update_type:J

    iget-wide v2, p1, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->update_type:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->original:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->original:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->content_type:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->content_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContent_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->original:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_type()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->update_type:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setContent_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->content_type:Ljava/lang/String;

    return-void
.end method

.method public setOriginal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->original:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_type(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/share/io/ContentForUpdate;->update_type:J

    return-void
.end method
