.class public Lcom/cmdm/control/bean/UserSignRsp;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "UserSignRsp"
.end annotation


# instance fields
.field public linkAddr:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "linkAddr"
    .end annotation
.end field

.field public signStatue:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "signStatue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method
