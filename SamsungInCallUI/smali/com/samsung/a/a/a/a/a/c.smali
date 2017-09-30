.class public final enum Lcom/samsung/a/a/a/a/a/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/a/a/a/a/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/a/a/a/a/a/c;

.field public static final enum b:Lcom/samsung/a/a/a/a/a/c;

.field private static final synthetic d:[Lcom/samsung/a/a/a/a/a/c;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/a/a/a/a/a/c;

    const-string v1, "POLICY"

    const-string v2, "https://dc.di.atlas.samsung.com"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/a/a/a/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/c;->a:Lcom/samsung/a/a/a/a/a/c;

    new-instance v0, Lcom/samsung/a/a/a/a/a/c;

    const-string v1, "DLS"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/a/a/a/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/c;->b:Lcom/samsung/a/a/a/a/a/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/a/a/a/a/a/c;

    sget-object v1, Lcom/samsung/a/a/a/a/a/c;->a:Lcom/samsung/a/a/a/a/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/a/a/a/a/a/c;->b:Lcom/samsung/a/a/a/a/a/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/a/a/a/a/a/c;->d:[Lcom/samsung/a/a/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/a/a/a/a/a/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/a/a/a/a/a/c;
    .locals 1

    const-class v0, Lcom/samsung/a/a/a/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/a/a/a/a/a/c;

    return-object v0
.end method

.method public static values()[Lcom/samsung/a/a/a/a/a/c;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/a/c;->d:[Lcom/samsung/a/a/a/a/a/c;

    invoke-virtual {v0}, [Lcom/samsung/a/a/a/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/a/a/a/a/a/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/a/c;->c:Ljava/lang/String;

    return-void
.end method
