.class public Lcom/a/a/e/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/a/a/e/c$a;)Lcom/a/a/e/c;
    .locals 1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/a/a/e/e;

    invoke-direct {v0, p1, p2}, Lcom/a/a/e/e;-><init>(Landroid/content/Context;Lcom/a/a/e/c$a;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/a/e/i;

    invoke-direct {v0}, Lcom/a/a/e/i;-><init>()V

    goto :goto_1
.end method
