.class public Lcom/cmdm/control/bean/GetSearchListResult;
.super Lcom/cmdm/control/bean/BaseBean;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "GetSearchListResult"
.end annotation


# instance fields
.field public count:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "count"
    .end annotation
.end field

.field public errorCorrect:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "errorCorrect"
    .end annotation
.end field

.field public isHaveSearch:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "isHaveSearch"
    .end annotation
.end field

.field public searchList:Lcom/cmdm/control/bean/SearchList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "searchList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmdm/control/bean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public hasSearch()Z
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/GetSearchListResult;->isHaveSearch:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/GetSearchListResult;->isHaveSearch:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/GetSearchListResult;->isHaveSearch:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
