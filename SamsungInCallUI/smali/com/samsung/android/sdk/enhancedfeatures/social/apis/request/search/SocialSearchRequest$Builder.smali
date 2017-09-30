.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;",
        ">;"
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->display_count:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->offset:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->parent_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->created_since:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->order:I

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->meta_counter_list:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->filter:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->sid:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->comment_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$1;)V

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->app_id:Ljava/lang/String;

    return-object p0
.end method

.method public setArticleId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->article_id:Ljava/lang/String;

    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->comment_id:Ljava/lang/String;

    return-object p0
.end method

.method public setCreatedSince(Ljava/lang/Long;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->created_since:Ljava/lang/Long;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayCount(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->display_count:I

    return-object p0
.end method

.method public setFilter(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->filter:I

    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->group_id:Ljava/lang/String;

    return-object p0
.end method

.method public setMetaCounterList(Z)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->meta_counter_list:Z

    return-object p0
.end method

.method public setMetaKey(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->meta_key:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setOffset(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->offset:I

    return-object p0
.end method

.method public setOrder(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->order:I

    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->owner_id:Ljava/lang/String;

    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->parent_id:Ljava/lang/String;

    return-object p0
.end method

.method public setSid(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest$Builder;->sid:I

    return-object p0
.end method
