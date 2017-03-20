.class public Lcom/cmdm/control/bean/RecmndStatusLable;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmdm/control/bean/RecmndStatusLable;->isSelected:Z

    .line 14
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/cmdm/control/bean/RecmndStatusLable;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/cmdm/control/bean/RecmndStatusLable;->isSelected:Z

    .line 49
    return-void
.end method
