.class abstract enum Lcom/google/a/b/v$a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/b/v$a;",
        ">;",
        "Lcom/google/a/a/a",
        "<",
        "Ljava/util/Map$Entry",
        "<**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/b/v$a;

.field public static final enum b:Lcom/google/a/b/v$a;

.field private static final synthetic c:[Lcom/google/a/b/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/a/b/v$a$1;

    const-string v1, "KEY"

    invoke-direct {v0, v1, v2}, Lcom/google/a/b/v$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/b/v$a;->a:Lcom/google/a/b/v$a;

    new-instance v0, Lcom/google/a/b/v$a$2;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v3}, Lcom/google/a/b/v$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/b/v$a;->b:Lcom/google/a/b/v$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/b/v$a;

    sget-object v1, Lcom/google/a/b/v$a;->a:Lcom/google/a/b/v$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/b/v$a;->b:Lcom/google/a/b/v$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/a/b/v$a;->c:[Lcom/google/a/b/v$a;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/a/b/v$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/b/v$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/b/v$a;
    .locals 1

    const-class v0, Lcom/google/a/b/v$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/v$a;

    return-object v0
.end method

.method public static values()[Lcom/google/a/b/v$a;
    .locals 1

    sget-object v0, Lcom/google/a/b/v$a;->c:[Lcom/google/a/b/v$a;

    invoke-virtual {v0}, [Lcom/google/a/b/v$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/b/v$a;

    return-object v0
.end method
