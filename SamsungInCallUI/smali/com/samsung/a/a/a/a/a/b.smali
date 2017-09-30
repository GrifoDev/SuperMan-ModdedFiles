.class public final enum Lcom/samsung/a/a/a/a/a/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/a/a/a/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/a/a/a/a/a/b;

.field public static final enum b:Lcom/samsung/a/a/a/a/a/b;

.field public static final enum c:Lcom/samsung/a/a/a/a/a/b;

.field private static final synthetic e:[Lcom/samsung/a/a/a/a/a/b;


# instance fields
.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/a/a/a/a/a/b;

    const-string v1, "DEVICE_CONTROLLER_DIR"

    const-string v2, "/dc/qtransf"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/a/a/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/a/b;

    new-instance v0, Lcom/samsung/a/a/a/a/a/b;

    const-string v1, "DLS_DIR"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/a/a/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/b;->b:Lcom/samsung/a/a/a/a/a/b;

    new-instance v0, Lcom/samsung/a/a/a/a/a/b;

    const-string v1, "DLS_DIR_BAT"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/a/a/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/b;->c:Lcom/samsung/a/a/a/a/a/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/a/a/a/a/a/b;

    sget-object v1, Lcom/samsung/a/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/a/a/a/a/a/b;->b:Lcom/samsung/a/a/a/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/a/a/a/a/a/b;->c:Lcom/samsung/a/a/a/a/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/a/a/a/a/a/b;->e:[Lcom/samsung/a/a/a/a/a/b;

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

    iput-object p3, p0, Lcom/samsung/a/a/a/a/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/a/a/a/a/a/b;
    .locals 1

    const-class v0, Lcom/samsung/a/a/a/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/a/a/a/a/a/b;

    return-object v0
.end method

.method public static values()[Lcom/samsung/a/a/a/a/a/b;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/a/b;->e:[Lcom/samsung/a/a/a/a/a/b;

    invoke-virtual {v0}, [Lcom/samsung/a/a/a/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/a/a/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/a/b;->d:Ljava/lang/String;

    return-void
.end method
