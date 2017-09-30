.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;


# instance fields
.field protected app_id:Ljava/lang/String;

.field protected article_id:Ljava/lang/String;

.field protected article_meta_counter_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected comment_count:I

.field protected created_at:J

.field protected description:Ljava/lang/String;

.field protected group_id:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected owner_id:Ljava/lang/String;

.field protected permission_set_id:I

.field protected push_notification:Ljava/lang/Boolean;

.field protected sid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleMetaCounterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->article_meta_counter_list:Ljava/util/List;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->comment_count:I

    return v0
.end method

.method public getCreatedAt()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->created_at:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionSetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->permission_set_id:I

    return v0
.end method

.method public getPushNotification()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->push_notification:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->sid:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->article_id:Ljava/lang/String;

    return-void
.end method

.method public setArticleMetaCounterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->article_meta_counter_list:Ljava/util/List;

    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->comment_count:I

    return-void
.end method

.method public setCreatedAt(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->created_at:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->group_id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->owner_id:Ljava/lang/String;

    return-void
.end method

.method public setPermissionSetId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->permission_set_id:I

    return-void
.end method

.method public setPushNotification(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->push_notification:Ljava/lang/Boolean;

    return-void
.end method

.method public setSid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->sid:I

    return-void
.end method
