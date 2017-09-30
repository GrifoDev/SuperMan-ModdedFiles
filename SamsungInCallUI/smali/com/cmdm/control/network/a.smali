.class public Lcom/cmdm/control/network/a;
.super Ljava/lang/Object;


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

    const/4 v1, 0x0

    sput-boolean v1, Lcom/cmdm/control/network/a;->cv:Z

    sget-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    sput-object v0, Lcom/cmdm/control/network/a;->cw:Lcom/cmdm/control/network/b;

    sput-boolean v1, Lcom/cmdm/control/network/a;->cx:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmdm/control/network/a;->cz:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/network/a;->cA:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/cmdm/control/network/b;)V
    .locals 0

    sput-object p0, Lcom/cmdm/control/network/a;->cw:Lcom/cmdm/control/network/b;

    return-void
.end method

.method public static aJ(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cmdm/control/network/a;->cy:Ljava/lang/String;

    return-void
.end method

.method public static bD()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmdm/control/network/a;->cy:Ljava/lang/String;

    return-object v0
.end method

.method public static bE()Z
    .locals 1

    sget-boolean v0, Lcom/cmdm/control/network/a;->cv:Z

    return v0
.end method

.method public static bF()Lcom/cmdm/control/network/b;
    .locals 1

    sget-object v0, Lcom/cmdm/control/network/a;->cw:Lcom/cmdm/control/network/b;

    return-object v0
.end method

.method public static bG()Z
    .locals 1

    sget-boolean v0, Lcom/cmdm/control/network/a;->cx:Z

    return v0
.end method

.method public static bH()Z
    .locals 1

    sget-boolean v0, Lcom/cmdm/control/network/a;->cz:Z

    return v0
.end method

.method public static clear()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/cmdm/control/network/a;->cv:Z

    sget-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    sput-object v0, Lcom/cmdm/control/network/a;->cw:Lcom/cmdm/control/network/b;

    sput-boolean v1, Lcom/cmdm/control/network/a;->cx:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmdm/control/network/a;->cz:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/network/a;->cy:Ljava/lang/String;

    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/cmdm/control/network/a;->cv:Z

    return-void
.end method

.method public static e(Z)V
    .locals 0

    sput-boolean p0, Lcom/cmdm/control/network/a;->cx:Z

    return-void
.end method

.method public static f(Z)V
    .locals 0

    sput-boolean p0, Lcom/cmdm/control/network/a;->cz:Z

    return-void
.end method
