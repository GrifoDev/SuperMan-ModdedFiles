.class public Lcom/cmdm/control/bean/MyStatusResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MyStatusResult"
.end annotation


# instance fields
.field public endTime:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "endTime"
    .end annotation
.end field

.field public startTime:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "startTime"
    .end annotation
.end field

.field public statusLableList:Lcom/cmdm/control/bean/MoodLableList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "statusLableList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/MoodLableList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/MoodLableList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/MyStatusResult;->statusLableList:Lcom/cmdm/control/bean/MoodLableList;

    return-void
.end method
