.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;
    }
.end annotation


# instance fields
.field private comment_id:Ljava/lang/String;

.field private meta_key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;->comment_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;->meta_key:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;->value:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;->value:Ljava/lang/String;

    return-object v0
.end method
