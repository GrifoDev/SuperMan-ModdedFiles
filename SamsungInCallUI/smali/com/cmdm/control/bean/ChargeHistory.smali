.class public Lcom/cmdm/control/bean/ChargeHistory;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargeCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeCount:Ljava/lang/String;

    return-object v0
.end method

.method public getChargePeriod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargePeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setChargeCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeCount:Ljava/lang/String;

    return-void
.end method

.method public setChargePeriod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargePeriod:Ljava/lang/String;

    return-void
.end method

.method public setChargeTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTime:Ljava/lang/String;

    return-void
.end method

.method public setChargeTypeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTypeId:Ljava/lang/String;

    return-void
.end method

.method public setChargeTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/ChargeHistory;->chargeTypeName:Ljava/lang/String;

    return-void
.end method
