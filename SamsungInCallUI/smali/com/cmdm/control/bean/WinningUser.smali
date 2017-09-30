.class public Lcom/cmdm/control/bean/WinningUser;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "WinningUser"
.end annotation


# instance fields
.field public prize:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "prize"
    .end annotation
.end field

.field public winningMobile:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "winningMobile"
    .end annotation
.end field

.field public winningMonth:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "winningMonth"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/WinningUser;->prize:Ljava/lang/String;

    return-object v0
.end method

.method public getWinningMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/WinningUser;->winningMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getWinningMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/WinningUser;->winningMonth:Ljava/lang/String;

    return-object v0
.end method

.method public setPrize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/WinningUser;->prize:Ljava/lang/String;

    return-void
.end method

.method public setWinningMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/WinningUser;->winningMobile:Ljava/lang/String;

    return-void
.end method

.method public setWinningMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/WinningUser;->winningMonth:Ljava/lang/String;

    return-void
.end method
