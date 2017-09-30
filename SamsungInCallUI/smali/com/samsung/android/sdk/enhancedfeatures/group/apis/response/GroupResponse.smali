.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;


# instance fields
.field protected app_id:Ljava/lang/String;

.field protected created_at:J

.field protected group_name:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected members_count:I

.field protected meta_data:Ljava/lang/String;

.field protected option:I

.field protected owner_id:Ljava/lang/String;

.field protected sid:I

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->created_at:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->group_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMembersCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->members_count:I

    return v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->meta_data:Ljava/lang/String;

    return-object v0
.end method

.method public getOption()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->option:I

    return v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->sid:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->created_at:J

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->group_name:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public setMembersCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->members_count:I

    return-void
.end method

.method public setMetaData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->meta_data:Ljava/lang/String;

    return-void
.end method

.method public setOption(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->option:I

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->owner_id:Ljava/lang/String;

    return-void
.end method

.method public setSid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->sid:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;->type:Ljava/lang/String;

    return-void
.end method
