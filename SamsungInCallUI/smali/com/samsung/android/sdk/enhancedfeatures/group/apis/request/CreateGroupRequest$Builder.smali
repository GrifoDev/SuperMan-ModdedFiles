.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private group_name:Ljava/lang/String;

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private meta_data:Ljava/lang/String;

.field private option:I

.field private sid:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->members:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->group_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->sid:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->option:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->meta_data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->members:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$1;)V

    return-object v0
.end method

.method public setGroupName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->group_name:Ljava/lang/String;

    return-object p0
.end method

.method public setMembers(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->members:Ljava/util/List;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setMetaData(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->meta_data:Ljava/lang/String;

    return-object p0
.end method

.method public setOption(I)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->option:I

    return-object p0
.end method

.method public setServiceId(I)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->sid:I

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
