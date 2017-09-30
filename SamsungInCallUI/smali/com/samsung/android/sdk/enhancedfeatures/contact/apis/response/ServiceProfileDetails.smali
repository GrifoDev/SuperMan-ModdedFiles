.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ServiceProfileDetails;
.super Ljava/lang/Object;


# instance fields
.field protected duid:Ljava/lang/String;

.field protected msisdn:Ljava/lang/String;

.field protected sids:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ServiceProfileDetails;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ServiceProfileDetails;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ServiceProfileDetails;->sids:I

    return v0
.end method

.method public setDuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ServiceProfileDetails;->duid:Ljava/lang/String;

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ServiceProfileDetails;->msisdn:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ServiceProfileDetails;->sids:I

    return-void
.end method
