.class public Lcom/cmdm/control/bean/WinnerInfo;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmdm/control/bean/WinnerInfo;->prize:Ljava/lang/String;

    return-object v0
.end method

.method public getWinner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmdm/control/bean/WinnerInfo;->winner:Ljava/lang/String;

    return-object v0
.end method

.method public setPrize(Ljava/lang/String;)V
    .locals 0
    .param p1, "prize"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cmdm/control/bean/WinnerInfo;->prize:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setWinner(Ljava/lang/String;)V
    .locals 0
    .param p1, "winner"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cmdm/control/bean/WinnerInfo;->winner:Ljava/lang/String;

    .line 34
    return-void
.end method
