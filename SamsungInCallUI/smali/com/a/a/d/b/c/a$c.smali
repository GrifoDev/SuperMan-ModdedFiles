.class public enum Lcom/a/a/d/b/c/a$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/d/b/c/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/d/b/c/a$c;

.field public static final enum b:Lcom/a/a/d/b/c/a$c;

.field public static final enum c:Lcom/a/a/d/b/c/a$c;

.field private static final synthetic d:[Lcom/a/a/d/b/c/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/d/b/c/a$c;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/b/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/c/a$c;->a:Lcom/a/a/d/b/c/a$c;

    new-instance v0, Lcom/a/a/d/b/c/a$c$1;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v3}, Lcom/a/a/d/b/c/a$c$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/c/a$c;->b:Lcom/a/a/d/b/c/a$c;

    new-instance v0, Lcom/a/a/d/b/c/a$c$2;

    const-string v1, "THROW"

    invoke-direct {v0, v1, v4}, Lcom/a/a/d/b/c/a$c$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/c/a$c;->c:Lcom/a/a/d/b/c/a$c;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/d/b/c/a$c;

    sget-object v1, Lcom/a/a/d/b/c/a$c;->a:Lcom/a/a/d/b/c/a$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/d/b/c/a$c;->b:Lcom/a/a/d/b/c/a$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/d/b/c/a$c;->c:Lcom/a/a/d/b/c/a$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/a/d/b/c/a$c;->d:[Lcom/a/a/d/b/c/a$c;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/a/a/d/b/c/a$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/a/a/d/b/c/a$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/b/c/a$c;
    .locals 1

    const-class v0, Lcom/a/a/d/b/c/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/c/a$c;

    return-object v0
.end method

.method public static values()[Lcom/a/a/d/b/c/a$c;
    .locals 1

    sget-object v0, Lcom/a/a/d/b/c/a$c;->d:[Lcom/a/a/d/b/c/a$c;

    invoke-virtual {v0}, [Lcom/a/a/d/b/c/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/b/c/a$c;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
