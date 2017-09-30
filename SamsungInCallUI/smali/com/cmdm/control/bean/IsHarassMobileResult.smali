.class public Lcom/cmdm/control/bean/IsHarassMobileResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "IsHarassMobileResult"
.end annotation


# instance fields
.field public harassMobile:Lcom/cmdm/control/bean/HarassMobile;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "harassMobile"
    .end annotation
.end field

.field public isHarassMobile:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isHarassMobile"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public hasHarass()Z
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/IsHarassMobileResult;->isHarassMobile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/IsHarassMobileResult;->isHarassMobile:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/IsHarassMobileResult;->isHarassMobile:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
