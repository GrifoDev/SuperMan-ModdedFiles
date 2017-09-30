.class public Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;
.super Ljava/lang/Object;


# instance fields
.field protected attr_nm:Ljava/lang/String;

.field protected attr_val:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->attr_nm:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->attr_val:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->attr_nm:Ljava/lang/String;

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->attr_val:Ljava/lang/String;

    return-void
.end method
