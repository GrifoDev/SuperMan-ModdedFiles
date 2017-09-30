.class public Lcom/cmdm/control/bean/GetUserCoupon;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "GetUserCoupon"
.end annotation


# instance fields
.field public count:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "count"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "description"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
