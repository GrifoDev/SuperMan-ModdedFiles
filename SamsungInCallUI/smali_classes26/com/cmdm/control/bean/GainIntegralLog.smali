.class public Lcom/cmdm/control/bean/GainIntegralLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "gainIntegralLog"
.end annotation


# instance fields
.field public integralCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "integralCount"
    .end annotation
.end field

.field public integralDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "integralDate"
    .end annotation
.end field

.field public integralTypeId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "integralTypeId"
    .end annotation
.end field

.field public integralTypeName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "integralTypeName"
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
.method public getIntegralCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLog;->integralCount:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegralDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLog;->integralDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegralTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLog;->integralTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegralTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cmdm/control/bean/GainIntegralLog;->integralTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setIntegralCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "integralCount"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLog;->integralCount:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setIntegralDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "integralDate"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLog;->integralDate:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setIntegralTypeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "integralTypeId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLog;->integralTypeId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIntegralTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "integralTypeName"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cmdm/control/bean/GainIntegralLog;->integralTypeName:Ljava/lang/String;

    .line 62
    return-void
.end method
