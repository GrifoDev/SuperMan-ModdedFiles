.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;
.super Ljava/lang/Object;


# instance fields
.field protected Entity:I

.field protected From:Ljava/lang/String;

.field protected created_at:J

.field protected group_id:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected msg:Ljava/lang/String;

.field protected pub_id:Ljava/lang/String;

.field protected seen:Z

.field protected updated_at:J

.field protected value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->created_at:J

    return-wide v0
.end method

.method public getEntity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->Entity:I

    return v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->From:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPubId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->pub_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->updated_at:J

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->value:I

    return v0
.end method

.method public isSeen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->seen:Z

    return v0
.end method

.method public setCreatedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->created_at:J

    return-void
.end method

.method public setEntity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->Entity:I

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->From:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->group_id:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPubId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->pub_id:Ljava/lang/String;

    return-void
.end method

.method public setSeen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->seen:Z

    return-void
.end method

.method public setUpdatedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->updated_at:J

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/NotificationInfo;->value:I

    return-void
.end method
