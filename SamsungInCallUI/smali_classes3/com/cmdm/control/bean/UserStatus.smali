.class public Lcom/cmdm/control/bean/UserStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "UserStatus"
.end annotation


# instance fields
.field public accessAddress:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "AccessAddress"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accessAddress"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/cmdm/control/bean/UserStatus;->setAccessAddress(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/cmdm/control/bean/UserStatus;->setStatus(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getAccessAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmdm/control/bean/UserStatus;->accessAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmdm/control/bean/UserStatus;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessAddress"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cmdm/control/bean/UserStatus;->accessAddress:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cmdm/control/bean/UserStatus;->status:Ljava/lang/String;

    .line 53
    return-void
.end method
