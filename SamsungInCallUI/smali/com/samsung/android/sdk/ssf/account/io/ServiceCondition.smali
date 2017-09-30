.class public Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;
.super Lcom/samsung/android/sdk/ssf/common/CommonInfo;


# instance fields
.field private c:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->s:I

    iput p2, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->c:I

    return-void
.end method


# virtual methods
.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->s:I

    return v0
.end method

.method public getcondition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->c:I

    return v0
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->s:I

    return-void
.end method

.method public setcondition(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceCondition [s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceCondition;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
