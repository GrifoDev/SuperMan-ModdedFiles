.class public Lcom/cmdm/control/bean/NewBillList;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "NewBillList"
.end annotation


# instance fields
.field public month:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "month"
    .end annotation
.end field

.field public year:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "year"
    .end annotation
.end field

.field public yearMonthBill:Lcom/cmdm/control/bean/BillLists;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "yearMonthBill"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/BillLists;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BillLists;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/NewBillList;->yearMonthBill:Lcom/cmdm/control/bean/BillLists;

    return-void
.end method
