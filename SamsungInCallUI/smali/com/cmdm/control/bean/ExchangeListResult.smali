.class public Lcom/cmdm/control/bean/ExchangeListResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ExchangeListResult"
.end annotation


# instance fields
.field public exchangeList:Lcom/cmdm/control/bean/ExchangeList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "exchangeList"
    .end annotation
.end field

.field public remainAmount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "remainAmount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
