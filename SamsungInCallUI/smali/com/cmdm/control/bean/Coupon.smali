.class public Lcom/cmdm/control/bean/Coupon;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Coupon"
.end annotation


# instance fields
.field public couponName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "couponName"
    .end annotation
.end field

.field public couponType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "couponType"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "description"
    .end annotation
.end field

.field public exchangeRule:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "exchangeRule"
    .end annotation
.end field

.field public logoUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "logoUrl"
    .end annotation
.end field

.field public subCouponList:Lcom/cmdm/control/bean/SubCouponList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subCouponList"
    .end annotation
.end field

.field public thumbUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "thumbUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/SubCouponList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/SubCouponList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/Coupon;->subCouponList:Lcom/cmdm/control/bean/SubCouponList;

    return-void
.end method
