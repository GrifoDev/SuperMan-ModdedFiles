.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ReplaceMsisdnWithDuidResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;


# instance fields
.field protected duid:Ljava/lang/String;

.field protected groups_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ReplaceMsisdnWithDuidResponse;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupsCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ReplaceMsisdnWithDuidResponse;->groups_count:I

    return v0
.end method

.method public setDuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ReplaceMsisdnWithDuidResponse;->duid:Ljava/lang/String;

    return-void
.end method

.method public setGroupsCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ReplaceMsisdnWithDuidResponse;->groups_count:I

    return-void
.end method
