.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;


# instance fields
.field protected article_id:Ljava/lang/String;

.field protected children_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/CommentInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected comment:Ljava/lang/String;

.field protected comment_id:Ljava/lang/String;

.field protected comment_meta_counter_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected created_at:J

.field protected owner_id:Ljava/lang/String;

.field protected parent_id:Ljava/lang/String;

.field protected permission_set_id:I

.field protected push_notification:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/CommentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->children_list:Ljava/util/List;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentMetaCounterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->comment_meta_counter_list:Ljava/util/List;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->created_at:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->parent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionSetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->permission_set_id:I

    return v0
.end method

.method public getPushNotification()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->push_notification:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->article_id:Ljava/lang/String;

    return-void
.end method

.method public setChildrenList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/CommentInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->children_list:Ljava/util/List;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setCommentMetaCounterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->comment_meta_counter_list:Ljava/util/List;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->created_at:J

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->owner_id:Ljava/lang/String;

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->parent_id:Ljava/lang/String;

    return-void
.end method

.method public setPermissionSetId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->permission_set_id:I

    return-void
.end method

.method public setPushNotification(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->push_notification:Ljava/lang/Boolean;

    return-void
.end method
