.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse$Group;
    }
.end annotation


# instance fields
.field protected groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse$Group;",
            ">;"
        }
    .end annotation
.end field

.field protected groups_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse$Group;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getGroupsCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;->groups_count:I

    return v0
.end method

.method public setGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse$Group;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;->groups:Ljava/util/List;

    return-void
.end method

.method public setGroupsCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;->groups_count:I

    return-void
.end method
