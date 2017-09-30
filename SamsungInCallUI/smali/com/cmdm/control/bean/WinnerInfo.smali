.class public Lcom/cmdm/control/bean/WinnerInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "winnerInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x41fd3e1d0e510d99L


# instance fields
.field public prize:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "prize"
    .end annotation
.end field

.field public winner:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "winner"
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

    iget-object v0, p0, Lcom/cmdm/control/bean/WinnerInfo;->prize:Ljava/lang/String;

    return-object v0
.end method

.method public getWinner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/WinnerInfo;->winner:Ljava/lang/String;

    return-object v0
.end method

.method public setPrize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/WinnerInfo;->prize:Ljava/lang/String;

    return-void
.end method

.method public setWinner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/WinnerInfo;->winner:Ljava/lang/String;

    return-void
.end method
