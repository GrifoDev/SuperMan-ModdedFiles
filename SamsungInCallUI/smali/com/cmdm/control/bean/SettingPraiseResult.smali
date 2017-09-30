.class public Lcom/cmdm/control/bean/SettingPraiseResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SettingPraiseResult"
.end annotation


# instance fields
.field public count:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "count"
    .end annotation
.end field

.field public praiseList:Lcom/cmdm/control/bean/PraiseList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "praiseList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/PraiseList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/PraiseList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/SettingPraiseResult;->praiseList:Lcom/cmdm/control/bean/PraiseList;

    return-void
.end method
