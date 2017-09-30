.class public Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;
.super Ljava/lang/Object;


# instance fields
.field protected duid:Ljava/lang/String;

.field protected serviceID:I

.field protected serviceStatus:I

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->duid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->type:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->serviceID:I

    iput p4, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->serviceStatus:I

    return-void
.end method


# virtual methods
.method public getDuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceID()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->serviceID:I

    return v0
.end method

.method public getServiceStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->serviceStatus:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->duid:Ljava/lang/String;

    return-void
.end method

.method public setServiceID(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->serviceID:I

    return-void
.end method

.method public setServiceStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->serviceStatus:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->type:Ljava/lang/String;

    return-void
.end method
