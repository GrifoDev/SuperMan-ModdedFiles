.class public Lcom/cmdm/control/bean/VideoStarResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "VideoStarResult"
.end annotation


# instance fields
.field public videoInfos:Lcom/cmdm/control/bean/VideoList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "videoInfos"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
