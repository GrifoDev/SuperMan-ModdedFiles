.class public Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportedService"
.end annotation


# instance fields
.field private cd:Ljava/lang/String;

.field private feature:I

.field private sid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->sid:I

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->cd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConfigurationDocument()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->cd:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->feature:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->sid:I

    return v0
.end method

.method public setConfigurationDocument(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->cd:Ljava/lang/String;

    return-void
.end method

.method public setFeature(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->feature:I

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->sid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportedService [sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->sid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->feature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;->cd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
