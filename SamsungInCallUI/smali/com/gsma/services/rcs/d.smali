.class public Lcom/gsma/services/rcs/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/gsma/services/rcs/d;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/rcs/d;->a:Lcom/gsma/services/rcs/d;

    sput-object v0, Lcom/gsma/services/rcs/d;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/gsma/services/rcs/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/gsma/services/rcs/d;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/gsma/services/rcs/d;->a:Lcom/gsma/services/rcs/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gsma/services/rcs/d;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/d;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/d;->a:Lcom/gsma/services/rcs/d;

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    sget-object v0, Lcom/gsma/services/rcs/d;->b:Landroid/content/Context;

    const-string v1, "ServiceAvailable"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    sget-object v0, Lcom/gsma/services/rcs/d;->b:Landroid/content/Context;

    const-string v1, "ServiceActivated"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/gsma/services/rcs/d;->b()Z

    move-result v0

    return v0
.end method
