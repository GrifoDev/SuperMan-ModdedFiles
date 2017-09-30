.class public final enum Lcom/a/a/d/b/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/d/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/d/b/b;

.field public static final enum b:Lcom/a/a/d/b/b;

.field public static final enum c:Lcom/a/a/d/b/b;

.field public static final enum d:Lcom/a/a/d/b/b;

.field private static final synthetic g:[Lcom/a/a/d/b/b;


# instance fields
.field private final e:Z

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/d/b/b;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/a/a/d/b/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/a/a/d/b/b;->a:Lcom/a/a/d/b/b;

    new-instance v0, Lcom/a/a/d/b/b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/a/a/d/b/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/a/a/d/b/b;->b:Lcom/a/a/d/b/b;

    new-instance v0, Lcom/a/a/d/b/b;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/a/a/d/b/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/a/a/d/b/b;->c:Lcom/a/a/d/b/b;

    new-instance v0, Lcom/a/a/d/b/b;

    const-string v1, "RESULT"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/a/a/d/b/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/a/a/d/b/b;->d:Lcom/a/a/d/b/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/a/a/d/b/b;

    sget-object v1, Lcom/a/a/d/b/b;->a:Lcom/a/a/d/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/d/b/b;->b:Lcom/a/a/d/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/d/b/b;->c:Lcom/a/a/d/b/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/d/b/b;->d:Lcom/a/a/d/b/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/a/a/d/b/b;->g:[Lcom/a/a/d/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/a/a/d/b/b;->e:Z

    iput-boolean p4, p0, Lcom/a/a/d/b/b;->f:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/b/b;
    .locals 1

    const-class v0, Lcom/a/a/d/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/b;

    return-object v0
.end method

.method public static values()[Lcom/a/a/d/b/b;
    .locals 1

    sget-object v0, Lcom/a/a/d/b/b;->g:[Lcom/a/a/d/b/b;

    invoke-virtual {v0}, [Lcom/a/a/d/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/b/b;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/d/b/b;->e:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/d/b/b;->f:Z

    return v0
.end method
