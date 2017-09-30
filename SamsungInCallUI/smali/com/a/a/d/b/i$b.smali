.class final enum Lcom/a/a/d/b/i$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/d/b/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/d/b/i$b;

.field public static final enum b:Lcom/a/a/d/b/i$b;

.field private static final synthetic c:[Lcom/a/a/d/b/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/d/b/i$b;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/b/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/i$b;->a:Lcom/a/a/d/b/i$b;

    new-instance v0, Lcom/a/a/d/b/i$b;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v3}, Lcom/a/a/d/b/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/i$b;->b:Lcom/a/a/d/b/i$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/a/d/b/i$b;

    sget-object v1, Lcom/a/a/d/b/i$b;->a:Lcom/a/a/d/b/i$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/d/b/i$b;->b:Lcom/a/a/d/b/i$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/a/a/d/b/i$b;->c:[Lcom/a/a/d/b/i$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/b/i$b;
    .locals 1

    const-class v0, Lcom/a/a/d/b/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/i$b;

    return-object v0
.end method

.method public static values()[Lcom/a/a/d/b/i$b;
    .locals 1

    sget-object v0, Lcom/a/a/d/b/i$b;->c:[Lcom/a/a/d/b/i$b;

    invoke-virtual {v0}, [Lcom/a/a/d/b/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/b/i$b;

    return-object v0
.end method
