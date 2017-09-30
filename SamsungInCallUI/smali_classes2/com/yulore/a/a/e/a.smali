.class public Lcom/yulore/a/a/e/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1790"

    aput-object v1, v0, v3

    const-string v1, "1791"

    aput-object v1, v0, v4

    const-string v1, "1793"

    aput-object v1, v0, v5

    const-string v1, "1795"

    aput-object v1, v0, v6

    const-string v1, "1796"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "1797"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1799"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulore/a/a/e/a;->a:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12583"

    aput-object v1, v0, v3

    const-string v1, "12593"

    aput-object v1, v0, v4

    const-string v1, "12589"

    aput-object v1, v0, v5

    const-string v1, "12520"

    aput-object v1, v0, v6

    const-string v1, "10193"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "11808"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulore/a/a/e/a;->b:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "118321"

    aput-object v1, v0, v3

    sput-object v0, Lcom/yulore/a/a/e/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const-string v0, "b"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "m"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "w"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
