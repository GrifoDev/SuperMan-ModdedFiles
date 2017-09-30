.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;


# instance fields
.field protected status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->status:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->status:I

    return-void
.end method
