.class public Lcom/cmdm/control/bean/RecmndStatusLable;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "RecmndStatusLable"
.end annotation


# instance fields
.field private isSelected:Z

.field public recmndStatusId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "recmndStatusId"
    .end annotation
.end field

.field public recmndStatusName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "recmndStatusName"
    .end annotation
.end field

.field public recmndStatusUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "recmndStatusUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmdm/control/bean/RecmndStatusLable;->isSelected:Z

    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmdm/control/bean/RecmndStatusLable;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmdm/control/bean/RecmndStatusLable;->isSelected:Z

    return-void
.end method
