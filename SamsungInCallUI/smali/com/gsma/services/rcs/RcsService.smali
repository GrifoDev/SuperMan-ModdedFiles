.class public abstract Lcom/gsma/services/rcs/RcsService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/RcsService$Direction;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/gsma/services/rcs/f;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/gsma/services/rcs/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/gsma/services/rcs/a;

.field private e:Landroid/os/IInterface;

.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/f;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->c:Ljava/util/Map;

    iput-object v1, p0, Lcom/gsma/services/rcs/RcsService;->e:Landroid/os/IInterface;

    iput-object v1, p0, Lcom/gsma/services/rcs/RcsService;->f:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/gsma/services/rcs/RcsService;->b:Lcom/gsma/services/rcs/f;

    new-instance v0, Lcom/gsma/services/rcs/a;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->d:Lcom/gsma/services/rcs/a;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected a(Landroid/os/IInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService;->e:Landroid/os/IInterface;

    return-void
.end method

.method public abstract b()V
.end method
