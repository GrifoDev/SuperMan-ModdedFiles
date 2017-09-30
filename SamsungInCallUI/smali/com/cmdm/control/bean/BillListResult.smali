.class public Lcom/cmdm/control/bean/BillListResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "BillListResult"
.end annotation


# instance fields
.field public billTimeList:Lcom/cmdm/control/bean/NewBillLists;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "billTimeList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
