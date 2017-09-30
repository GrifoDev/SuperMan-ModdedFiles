.class public Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected article_id:Ljava/lang/String;

.field protected children_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentId;",
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
            "Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected created_at:Ljava/lang/Long;

.field protected owner_id:Ljava/lang/String;

.field protected parent_id:Ljava/lang/String;

.field protected permission_set_id:I

.field protected push_notification:Ljava/lang/Boolean;

.field protected updated_at:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->children_list:Ljava/util/List;

    return-object v0
.end method

.method public getCommenMetaCounterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->comment_meta_counter_list:Ljava/util/List;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->created_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->parent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionSetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->permission_set_id:I

    return v0
.end method

.method public getPushNotification()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->push_notification:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUpdatedTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->updated_at:Ljava/lang/Long;

    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->article_id:Ljava/lang/String;

    return-void
.end method

.method public setChildrenList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentId;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->children_list:Ljava/util/List;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setComment_meta_counter_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->comment_meta_counter_list:Ljava/util/List;

    return-void
.end method

.method public setCreatedTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->created_at:Ljava/lang/Long;

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->owner_id:Ljava/lang/String;

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->parent_id:Ljava/lang/String;

    return-void
.end method

.method public setPermissionSetId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->permission_set_id:I

    return-void
.end method

.method public setPushNotification(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->push_notification:Ljava/lang/Boolean;

    return-void
.end method

.method public setUpdatedTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->updated_at:Ljava/lang/Long;

    return-void
.end method
