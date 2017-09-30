.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;->members:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$1;)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setMembers(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest$Builder;->members:Ljava/util/List;

    return-object p0
.end method
