.class public Lcom/cmdm/control/bean/SoftwareResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SoftwareResult"
.end annotation


# instance fields
.field public count:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "count"
    .end annotation
.end field

.field public softwareList:Lcom/cmdm/control/bean/SoftwareList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "softwareList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/SoftwareList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/SoftwareList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/SoftwareResult;->softwareList:Lcom/cmdm/control/bean/SoftwareList;

    return-void
.end method
