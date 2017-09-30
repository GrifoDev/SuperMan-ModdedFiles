.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;
    }
.end annotation


# instance fields
.field private comment_id:Ljava/lang/String;

.field private meta_key:Ljava/lang/String;

.field private only_once:Z

.field private value:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->comment_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->meta_key:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->value:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->only_once:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyOnce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->only_once:Z

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;->value:I

    return v0
.end method
