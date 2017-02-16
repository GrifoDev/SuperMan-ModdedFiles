.class public Lcom/cmdm/control/bean/ChargeHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ChargeHistory"
.end annotation


# instance fields
.field public chargeCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "chargeCount"
    .end annotation
.end field

.field public chargePeriod:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "chargePeriod"
    .end annotation
.end field

.field public chargeTime:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "chargeTime"
    .end annotation
.end field

.field public chargeTypeId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "chargeTypeId"
    .end annotation
.end field

.field public chargeTypeName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "chargeTypeName"
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
.method public getChargeCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeCount:Ljava/lang/String;

    return-object v0
.end method

.method public getChargePeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargePeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setChargeCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargeCount"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeCount:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setChargePeriod(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargePeriod"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargePeriod:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setChargeTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargeTime"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTime:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setChargeTypeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargeTypeId"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTypeId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setChargeTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargeTypeName"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTypeName:Ljava/lang/String;

    .line 80
    return-void
.end method
