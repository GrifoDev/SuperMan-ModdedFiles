.class public Lcom/cmdm/control/bean/WinningUserResult;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/WinningUserList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/WinningUserList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/WinningUserResult;->winningUserList:Lcom/cmdm/control/bean/WinningUserList;

    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/WinningUserResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/WinningUserResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getWinningUserList()Lcom/cmdm/control/bean/WinningUserList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/WinningUserResult;->winningUserList:Lcom/cmdm/control/bean/WinningUserList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/WinningUserResult;->offset:Ljava/lang/String;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/WinningUserResult;->range:Ljava/lang/String;

    return-void
.end method

.method public setWinningUserList(Lcom/cmdm/control/bean/WinningUserList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/WinningUserResult;->winningUserList:Lcom/cmdm/control/bean/WinningUserList;

    return-void
.end method
