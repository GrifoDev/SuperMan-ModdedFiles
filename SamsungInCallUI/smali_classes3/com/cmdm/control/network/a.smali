.class public Lcom/cmdm/control/network/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cv:Z

.field private static cw:Lcom/cmdm/control/network/b;

.field private static cx:Z

.field private static cy:Ljava/lang/String;

.field private static cz:Z


# instance fields
.field private cA:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    sput-boolean v1, Lcom/cmdm/control/network/a;->cv:Z

    .line 10
    sget-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    sput-object v0, Lcom/cmdm/control/network/a;->cw:Lcom/cmdm/control/network/b;

    .line 11
    sput-boolean v1, Lcom/cmdm/control/network/a;->cx:Z

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmdm/control/network/a;->cz:Z

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/network/a;->cA:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public static a(Lcom/cmdm/control/network/b;)V
    .locals 0
    .param p0, "networkType"    # Lcom/cmdm/control/network/b;

    .prologue
    .line 43
    sput-object p0, Lcom/cmdm/control/network/a;->cw:Lcom/cmdm/control/network/b;

    .line 44
    return-void
.end method

.method public static aJ(Ljava/lang/String;)V
    .locals 0
    .param p0, "mssid"    # Ljava/lang/String;

    .prologue
    .line 30
    sput-object p0, Lcom/cmdm/control/network/a;->cy:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static bD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cmdm/control/network/a;->cy:Ljava/lang/String;

    return-object v0
.end method

.method public static bE()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/cmdm/control/network/a;->cv:Z

    return v0
.end method

.method public static bF()Lcom/cmdm/control/network/b;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/cmdm/control/network/a;->cw:Lcom/cmdm/control/network/b;

    return-object v0
.end method

.method public static bG()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/cmdm/control/network/a;->cx:Z

    return v0
.end method

.method public static bH()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/cmdm/control/network/a;->cz:Z

    return v0
.end method

.method public static clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    sput-boolean v1, Lcom/cmdm/control/network/a;->cv:Z

    .line 19
    sget-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    sput-object v0, Lcom/cmdm/control/network/a;->cw:Lcom/cmdm/control/network/b;

    .line 20
    sput-boolean v1, Lcom/cmdm/control/network/a;->cx:Z

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmdm/control/network/a;->cz:Z

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/network/a;->cy:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static d(Z)V
    .locals 0
    .param p0, "isOnlyCMWAP"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/cmdm/control/network/a;->cv:Z

    .line 38
    return-void
.end method

.method public static e(Z)V
    .locals 0
    .param p0, "isOnline"    # Z

    .prologue
    .line 49
    sput-boolean p0, Lcom/cmdm/control/network/a;->cx:Z

    .line 50
    return-void
.end method

.method public static f(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lcom/cmdm/control/network/a;->cz:Z

    .line 54
    return-void
.end method
