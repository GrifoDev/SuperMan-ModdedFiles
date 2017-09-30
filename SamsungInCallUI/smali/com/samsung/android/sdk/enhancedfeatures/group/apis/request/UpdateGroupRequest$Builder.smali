.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private group_name:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private meta_data:Ljava/lang/String;

.field private option:I

.field private owner_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->group_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->option:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->meta_data:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$1;)V

    return-object v0
.end method

.method public setGroupName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->group_name:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setMetaData(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->meta_data:Ljava/lang/String;

    return-object p0
.end method

.method public setOption(I)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->option:I

    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->owner_id:Ljava/lang/String;

    return-object p0
.end method
