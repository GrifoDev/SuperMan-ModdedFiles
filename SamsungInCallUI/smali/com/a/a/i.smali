.class public final enum Lcom/a/a/i;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/i;

.field public static final enum b:Lcom/a/a/i;

.field public static final enum c:Lcom/a/a/i;

.field public static final enum d:Lcom/a/a/i;

.field public static final enum e:Lcom/a/a/i;

.field private static final synthetic f:[Lcom/a/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/i;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v2}, Lcom/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/i;->a:Lcom/a/a/i;

    new-instance v0, Lcom/a/a/i;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/i;->b:Lcom/a/a/i;

    new-instance v0, Lcom/a/a/i;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/i;->c:Lcom/a/a/i;

    new-instance v0, Lcom/a/a/i;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v5}, Lcom/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/i;->d:Lcom/a/a/i;

    new-instance v0, Lcom/a/a/i;

    const-string v1, "priority"

    invoke-direct {v0, v1, v6}, Lcom/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/i;->e:Lcom/a/a/i;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/i;

    sget-object v1, Lcom/a/a/i;->a:Lcom/a/a/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/i;->b:Lcom/a/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/i;->c:Lcom/a/a/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/i;->d:Lcom/a/a/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/i;->e:Lcom/a/a/i;

    aput-object v1, v0, v6

    sput-object v0, Lcom/a/a/i;->f:[Lcom/a/a/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/i;
    .locals 1

    const-class v0, Lcom/a/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/i;

    return-object v0
.end method

.method public static values()[Lcom/a/a/i;
    .locals 1

    sget-object v0, Lcom/a/a/i;->f:[Lcom/a/a/i;

    invoke-virtual {v0}, [Lcom/a/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/i;

    return-object v0
.end method
