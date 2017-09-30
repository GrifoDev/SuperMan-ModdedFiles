.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;


# instance fields
.field protected count:I

.field protected display:I

.field protected id:Ljava/lang/String;

.field protected members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected offset:I

.field protected pages_remain:I

.field protected total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->count:I

    return v0
.end method

.method public getDisplay()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->display:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->members:Ljava/util/List;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->offset:I

    return v0
.end method

.method public getPagesRemain()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->pages_remain:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->total:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->count:I

    return-void
.end method

.method public setDisplay(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->display:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->members:Ljava/util/List;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->offset:I

    return-void
.end method

.method public setPagesRemain(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->pages_remain:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupMembersResponse;->total:I

    return-void
.end method
