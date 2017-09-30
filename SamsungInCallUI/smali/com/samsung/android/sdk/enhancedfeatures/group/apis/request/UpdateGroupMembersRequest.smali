.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest$Builder;
    }
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
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest;->members:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest;->members:Ljava/util/List;

    return-object v0
.end method
