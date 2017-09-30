.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;


# instance fields
.field protected app_id:Ljava/lang/String;

.field protected group_name:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected meta_data:Ljava/lang/String;

.field protected non_members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->group_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->meta_data:Ljava/lang/String;

    return-object v0
.end method

.method public getNonMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->non_members:Ljava/util/List;

    return-object v0
.end method

.method public getOption()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->option:I

    return v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->sid:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->group_name:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public setMetaData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->meta_data:Ljava/lang/String;

    return-void
.end method

.method public setNonMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->non_members:Ljava/util/List;

    return-void
.end method

.method public setOption(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->option:I

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->owner_id:Ljava/lang/String;

    return-void
.end method

.method public setSid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->sid:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/CreateGroupResponse;->type:Ljava/lang/String;

    return-void
.end method
