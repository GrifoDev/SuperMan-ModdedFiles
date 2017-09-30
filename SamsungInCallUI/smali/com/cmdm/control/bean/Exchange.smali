.class public Lcom/cmdm/control/bean/Exchange;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Exchange"
.end annotation


# instance fields
.field public amount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "amount"
    .end annotation
.end field

.field public company:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "company"
    .end annotation
.end field

.field public operTime:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "operTime"
    .end annotation
.end field

.field public subCoupon:Lcom/cmdm/control/bean/SubCoupon;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subCoupon"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "type"
    .end annotation
.end field

.field public userMobile:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "userMobile"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
