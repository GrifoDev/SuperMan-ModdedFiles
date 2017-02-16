.class public Lcom/cmdm/control/bean/WinningUserResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "WinningUserResult"
.end annotation


# instance fields
.field public offset:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "offset"
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "range"
    .end annotation
.end field

.field public winningUserList:Lcom/cmdm/control/bean/WinningUserList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "winningUserList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/cmdm/control/bean/WinningUserList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/WinningUserList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/WinningUserResult;->winningUserList:Lcom/cmdm/control/bean/WinningUserList;

    .line 14
    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmdm/control/bean/WinningUserResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cmdm/control/bean/WinningUserResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getWinningUserList()Lcom/cmdm/control/bean/WinningUserList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cmdm/control/bean/WinningUserResult;->winningUserList:Lcom/cmdm/control/bean/WinningUserList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cmdm/control/bean/WinningUserResult;->offset:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cmdm/control/bean/WinningUserResult;->range:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setWinningUserList(Lcom/cmdm/control/bean/WinningUserList;)V
    .locals 0
    .param p1, "winningUserList"    # Lcom/cmdm/control/bean/WinningUserList;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cmdm/control/bean/WinningUserResult;->winningUserList:Lcom/cmdm/control/bean/WinningUserList;

    .line 73
    return-void
.end method
