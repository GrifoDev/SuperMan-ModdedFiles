.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;
.super Ljava/lang/Object;


# instance fields
.field protected member_id:Ljava/lang/String;

.field protected updated_at:Ljava/lang/Long;

.field protected value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemberId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->member_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->updated_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->value:I

    return v0
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->member_id:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->updated_at:Ljava/lang/Long;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->value:I

    return-void
.end method
