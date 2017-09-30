.class public Lcom/cmdm/control/bean/PicStarResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "PicStarResult"
.end annotation


# instance fields
.field public picInfos:Lcom/cmdm/control/bean/CRSProfileList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "picInfos"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
