.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private comment_id:Ljava/lang/String;

.field private meta_key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$1;)V

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->comment_id:Ljava/lang/String;

    return-object p0
.end method

.method public setMetaKey(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->meta_key:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest$Builder;->value:Ljava/lang/String;

    return-object p0
.end method
