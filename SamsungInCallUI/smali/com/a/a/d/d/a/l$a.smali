.class public final enum Lcom/a/a/d/d/a/l$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/d/d/a/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/d/d/a/l$a;

.field public static final enum b:Lcom/a/a/d/d/a/l$a;

.field public static final enum c:Lcom/a/a/d/d/a/l$a;

.field public static final enum d:Lcom/a/a/d/d/a/l$a;

.field public static final enum e:Lcom/a/a/d/d/a/l$a;

.field private static final synthetic g:[Lcom/a/a/d/d/a/l$a;


# instance fields
.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/d/d/a/l$a;

    const-string v1, "GIF"

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/d/d/a/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/a/a/d/d/a/l$a;->a:Lcom/a/a/d/d/a/l$a;

    new-instance v0, Lcom/a/a/d/d/a/l$a;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v3, v2}, Lcom/a/a/d/d/a/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/a/a/d/d/a/l$a;->b:Lcom/a/a/d/d/a/l$a;

    new-instance v0, Lcom/a/a/d/d/a/l$a;

    const-string v1, "PNG_A"

    invoke-direct {v0, v1, v4, v3}, Lcom/a/a/d/d/a/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/a/a/d/d/a/l$a;->c:Lcom/a/a/d/d/a/l$a;

    new-instance v0, Lcom/a/a/d/d/a/l$a;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v5, v2}, Lcom/a/a/d/d/a/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/a/a/d/d/a/l$a;->d:Lcom/a/a/d/d/a/l$a;

    new-instance v0, Lcom/a/a/d/d/a/l$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6, v2}, Lcom/a/a/d/d/a/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/a/a/d/d/a/l$a;->e:Lcom/a/a/d/d/a/l$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/d/d/a/l$a;

    sget-object v1, Lcom/a/a/d/d/a/l$a;->a:Lcom/a/a/d/d/a/l$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/d/d/a/l$a;->b:Lcom/a/a/d/d/a/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/d/d/a/l$a;->c:Lcom/a/a/d/d/a/l$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/d/d/a/l$a;->d:Lcom/a/a/d/d/a/l$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/d/d/a/l$a;->e:Lcom/a/a/d/d/a/l$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/a/a/d/d/a/l$a;->g:[Lcom/a/a/d/d/a/l$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/a/a/d/d/a/l$a;->f:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/d/a/l$a;
    .locals 1

    const-class v0, Lcom/a/a/d/d/a/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/a/l$a;

    return-object v0
.end method

.method public static values()[Lcom/a/a/d/d/a/l$a;
    .locals 1

    sget-object v0, Lcom/a/a/d/d/a/l$a;->g:[Lcom/a/a/d/d/a/l$a;

    invoke-virtual {v0}, [Lcom/a/a/d/d/a/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/d/a/l$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/d/d/a/l$a;->f:Z

    return v0
.end method
