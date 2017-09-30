.class public Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;
.super Ljava/lang/Object;


# instance fields
.field protected member_id:Ljava/lang/String;

.field protected updated_at:J

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->member_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->updated_at:J

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->value:I

    return v0
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->member_id:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->updated_at:J

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->value:I

    return-void
.end method
