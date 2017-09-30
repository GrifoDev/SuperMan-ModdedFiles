.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;
    }
.end annotation


# instance fields
.field private group_name:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private meta_data:Ljava/lang/String;

.field private option:I

.field private owner_id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->owner_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->group_name:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->option:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->meta_data:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->group_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->meta_data:Ljava/lang/String;

    return-object v0
.end method

.method public getOption()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->option:I

    return v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;->owner_id:Ljava/lang/String;

    return-object v0
.end method
