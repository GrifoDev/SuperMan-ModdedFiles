.class public Lcom/cmdm/control/bean/MediaInfo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MediaInfo"
.end annotation


# instance fields
.field public box:Lcom/cmdm/control/bean/Box;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "box"
    .end annotation
.end field

.field public content:Lcom/cmdm/control/bean/Content;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "content"
    .end annotation
.end field

.field public crsProfile:Lcom/cmdm/control/bean/CRSProfile;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "crsProfile"
    .end annotation
.end field

.field public star:Lcom/cmdm/control/bean/Star;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "star"
    .end annotation
.end field

.field public subject:Lcom/cmdm/control/bean/Subject;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "subject"
    .end annotation
.end field

.field public topic:Lcom/cmdm/control/bean/Topic;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "topic"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "type"
    .end annotation
.end field

.field public videoInfo:Lcom/cmdm/control/bean/VideoInfo;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "videoInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
