.class public final enum Lcom/samsung/a/a/a/a/a/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/a/a/a/a/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/a/a/a/a/a/d;

.field public static final enum b:Lcom/samsung/a/a/a/a/a/d;

.field private static final synthetic d:[Lcom/samsung/a/a/a/a/a/d;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/a/a/a/a/a/d;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/a/a/a/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/d;->a:Lcom/samsung/a/a/a/a/a/d;

    new-instance v0, Lcom/samsung/a/a/a/a/a/d;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/a/a/a/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/a/a/a/a/a/d;->b:Lcom/samsung/a/a/a/a/a/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/a/a/a/a/a/d;

    sget-object v1, Lcom/samsung/a/a/a/a/a/d;->a:Lcom/samsung/a/a/a/a/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/a/a/a/a/a/d;->b:Lcom/samsung/a/a/a/a/a/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/a/a/a/a/a/d;->d:[Lcom/samsung/a/a/a/a/a/d;

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

    iput-object p3, p0, Lcom/samsung/a/a/a/a/a/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/a/a/a/a/a/d;
    .locals 1

    const-class v0, Lcom/samsung/a/a/a/a/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/a/a/a/a/a/d;

    return-object v0
.end method

.method public static values()[Lcom/samsung/a/a/a/a/a/d;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/a/d;->d:[Lcom/samsung/a/a/a/a/a/d;

    invoke-virtual {v0}, [Lcom/samsung/a/a/a/a/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/a/a/a/a/a/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/a/d;->c:Ljava/lang/String;

    return-object v0
.end method
