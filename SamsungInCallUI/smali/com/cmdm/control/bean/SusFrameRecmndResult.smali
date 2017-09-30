.class public Lcom/cmdm/control/bean/SusFrameRecmndResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "SusFrameRecmndResult"
.end annotation


# instance fields
.field public recmndContentList:Lcom/cmdm/control/bean/RecmndContentList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "recmndContentList"
    .end annotation
.end field

.field public recmndFzTxtList:Lcom/cmdm/control/bean/FzTopicTxtList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "recmndFzTxtList"
    .end annotation
.end field

.field public recmndStatusLableList:Lcom/cmdm/control/bean/RecmndStatusLableList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "recmndStatusLableList"
    .end annotation
.end field

.field public recmndTxtList:Lcom/cmdm/control/bean/ContentList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "recmndTxtList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
