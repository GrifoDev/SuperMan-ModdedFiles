.class public Lcom/cmdm/control/bean/BusinessPackage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "businessPackage"
.end annotation


# instance fields
.field public billingType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "billingType"
    .end annotation
.end field

.field public businessCode:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "businessCode"
    .end annotation
.end field

.field public businessDescription:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "businessDescription"
    .end annotation
.end field

.field public businessName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "businessName"
    .end annotation
.end field

.field public businessSpCode:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "businessSpCode"
    .end annotation
.end field

.field public businessType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "businessType"
    .end annotation
.end field

.field public consumptionCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "consumptionCount"
    .end annotation
.end field

.field public informationCosts:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "informationCosts"
    .end annotation
.end field

.field public isCanUsed:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isCanUsed"
    .end annotation
.end field

.field public monthlyBillingModel:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "monthlyBillingModel"
    .end annotation
.end field

.field public productId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "productId"
    .end annotation
.end field

.field public rightsCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "rightsCount"
    .end annotation
.end field

.field public translatedByDay:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "translatedByDay"
    .end annotation
.end field

.field public userStatus:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "userStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->billingType:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessName:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessSpCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessSpCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessType:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumptionCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->consumptionCount:Ljava/lang/String;

    return-object v0
.end method

.method public getInformationCosts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->informationCosts:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthlyBillingModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->monthlyBillingModel:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getRightsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->rightsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedByDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->translatedByDay:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->userStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hasCanUsed()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->isCanUsed:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->isCanUsed:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/BusinessPackage;->isCanUsed:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBillingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "billingType"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->billingType:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setBusinessCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessCode"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessCode:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setBusinessDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessDescription"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessDescription:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setBusinessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessName"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessName:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setBusinessSpCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessSpCode"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessSpCode:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setBusinessType(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessType"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->businessType:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setConsumptionCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumptionCount"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->consumptionCount:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setInformationCosts(Ljava/lang/String;)V
    .locals 0
    .param p1, "informationCosts"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->informationCosts:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setMonthlyBillingModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "monthlyBillingModel"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->monthlyBillingModel:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->productId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setRightsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "rightsCount"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->rightsCount:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setTranslatedByDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "translatedByDay"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->translatedByDay:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setUserStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "userStatus"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/cmdm/control/bean/BusinessPackage;->userStatus:Ljava/lang/String;

    .line 302
    return-void
.end method
