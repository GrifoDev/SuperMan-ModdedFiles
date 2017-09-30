.class public Lcom/cmdm/control/bean/WorkTimeResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "WorkTimeResult"
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

.field public workDay:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "workDay"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
