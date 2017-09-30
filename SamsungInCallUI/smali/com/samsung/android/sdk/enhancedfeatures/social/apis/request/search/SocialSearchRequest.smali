.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    }
.end annotation


# instance fields
.field private app_id:Ljava/lang/String;

.field private article_id:Ljava/lang/String;

.field private comment_id:Ljava/lang/String;

.field private created_since:Ljava/lang/Long;

.field private description:Ljava/lang/String;

.field private display_count:I

.field private filter:I

.field private group_id:Ljava/lang/String;

.field private meta_counter_list:Z

.field private meta_key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private offset:I

.field private order:I

.field private owner_id:Ljava/lang/String;

.field private parent_id:Ljava/lang/String;

.field private sid:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->display_count:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->offset:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->filter:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->app_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->sid:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->owner_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->description:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->article_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->comment_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->meta_key:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->parent_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$1200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->group_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->created_since:Ljava/lang/Long;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->order:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->access$1500(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->meta_counter_list:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedSince()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->created_since:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->display_count:I

    return v0
.end method

.method public getFilter()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->filter:I

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaCounterList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->meta_counter_list:Z

    return v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->offset:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->order:I

    return v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->parent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;->sid:I

    return v0
.end method
