.class public Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected comment_id:Ljava/lang/String;

.field protected created_at:Ljava/lang/Long;

.field protected meta_key:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->created_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->comment_id:Ljava/lang/String;

    return-void
.end method

.method public setCreatedTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->created_at:Ljava/lang/Long;

    return-void
.end method

.method public setMetaKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->meta_key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->value:Ljava/lang/String;

    return-void
.end method
