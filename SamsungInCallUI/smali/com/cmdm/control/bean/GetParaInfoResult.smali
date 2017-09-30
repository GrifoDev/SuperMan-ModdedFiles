.class public Lcom/cmdm/control/bean/GetParaInfoResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "GetParaInfoResult"
.end annotation


# instance fields
.field public campaigTemplateStart:Lcom/cmdm/control/bean/CampaigTemplateStart;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaigTemplateStart"
    .end annotation
.end field

.field public shareMessage:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "shareMessage"
    .end annotation
.end field

.field public softwareList:Lcom/cmdm/control/bean/SoftwareList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "softwareList"
    .end annotation
.end field

.field public welcome:Lcom/cmdm/control/bean/Welcome;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "welcome"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
