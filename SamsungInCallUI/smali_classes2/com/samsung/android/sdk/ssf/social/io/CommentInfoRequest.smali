.class public Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;
.super Ljava/lang/Object;


# instance fields
.field protected article_id:Ljava/lang/String;

.field protected comment:Ljava/lang/String;

.field protected meta_counter:Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;

.field protected meta_data:Lcom/samsung/android/sdk/ssf/social/io/MetaData;

.field protected parent_id:Ljava/lang/String;

.field protected permission_set_id:I

.field protected push_notification:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaCounter()Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->meta_counter:Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;

    return-object v0
.end method

.method public getMetaData()Lcom/samsung/android/sdk/ssf/social/io/MetaData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->meta_data:Lcom/samsung/android/sdk/ssf/social/io/MetaData;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->parent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionSetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->permission_set_id:I

    return v0
.end method

.method public getPushNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->push_notification:Z

    return v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->article_id:Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->comment:Ljava/lang/String;

    return-void
.end method

.method public setMetaCounter(Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->meta_counter:Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;

    return-void
.end method

.method public setMetaData(Lcom/samsung/android/sdk/ssf/social/io/MetaData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->meta_data:Lcom/samsung/android/sdk/ssf/social/io/MetaData;

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->parent_id:Ljava/lang/String;

    return-void
.end method

.method public setPermissionSetId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->permission_set_id:I

    return-void
.end method

.method public setPushNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoRequest;->push_notification:Z

    return-void
.end method
