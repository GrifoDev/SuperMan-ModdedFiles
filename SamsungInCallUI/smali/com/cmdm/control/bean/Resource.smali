.class public Lcom/cmdm/control/bean/Resource;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Resource"
.end annotation


# instance fields
.field public categoryId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "categoryId"
    .end annotation
.end field

.field public flag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "flag"
    .end annotation
.end field

.field public flagName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "flagName"
    .end annotation
.end field

.field public mediaList:Lcom/cmdm/control/bean/MediaList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "mediaList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
