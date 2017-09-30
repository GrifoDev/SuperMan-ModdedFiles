.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;
    }
.end annotation


# instance fields
.field private article_id:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private meta_counter:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

.field private meta_data:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

.field private parent_id:Ljava/lang/String;

.field private permission_set_id:I

.field private push_notification:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->article_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->comment:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->permission_set_id:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->parent_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->push_notification:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->meta_data:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->meta_counter:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->meta_counter:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    return-object v0
.end method

.method public getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->meta_data:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->parent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionSetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->permission_set_id:I

    return v0
.end method

.method public getPushNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;->push_notification:Z

    return v0
.end method
