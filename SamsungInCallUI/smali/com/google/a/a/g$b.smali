.class abstract enum Lcom/google/a/a/g$b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/a/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/a/g$b;",
        ">;",
        "Lcom/google/a/a/f",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/a/g$b;

.field public static final enum b:Lcom/google/a/a/g$b;

.field public static final enum c:Lcom/google/a/a/g$b;

.field public static final enum d:Lcom/google/a/a/g$b;

.field private static final synthetic e:[Lcom/google/a/a/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/a/a/g$b$1;

    const-string v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/g$b$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/g$b;->a:Lcom/google/a/a/g$b;

    new-instance v0, Lcom/google/a/a/g$b$2;

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1, v3}, Lcom/google/a/a/g$b$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/g$b;->b:Lcom/google/a/a/g$b;

    new-instance v0, Lcom/google/a/a/g$b$3;

    const-string v1, "IS_NULL"

    invoke-direct {v0, v1, v4}, Lcom/google/a/a/g$b$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/g$b;->c:Lcom/google/a/a/g$b;

    new-instance v0, Lcom/google/a/a/g$b$4;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1, v5}, Lcom/google/a/a/g$b$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/a/g$b;->d:Lcom/google/a/a/g$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/a/a/g$b;

    sget-object v1, Lcom/google/a/a/g$b;->a:Lcom/google/a/a/g$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/a/g$b;->b:Lcom/google/a/a/g$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/a/g$b;->c:Lcom/google/a/a/g$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/a/g$b;->d:Lcom/google/a/a/g$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/a/a/g$b;->e:[Lcom/google/a/a/g$b;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/a/a/g$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/a/g$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/a/g$b;
    .locals 1

    const-class v0, Lcom/google/a/a/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/g$b;

    return-object v0
.end method

.method public static values()[Lcom/google/a/a/g$b;
    .locals 1

    sget-object v0, Lcom/google/a/a/g$b;->e:[Lcom/google/a/a/g$b;

    invoke-virtual {v0}, [Lcom/google/a/a/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/a/g$b;

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/a/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/a/f",
            "<TT;>;"
        }
    .end annotation

    return-object p0
.end method
