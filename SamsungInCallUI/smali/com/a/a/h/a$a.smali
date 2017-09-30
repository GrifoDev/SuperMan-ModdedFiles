.class final enum Lcom/a/a/h/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/h/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/h/a$a;

.field public static final enum b:Lcom/a/a/h/a$a;

.field public static final enum c:Lcom/a/a/h/a$a;

.field public static final enum d:Lcom/a/a/h/a$a;

.field public static final enum e:Lcom/a/a/h/a$a;

.field public static final enum f:Lcom/a/a/h/a$a;

.field public static final enum g:Lcom/a/a/h/a$a;

.field public static final enum h:Lcom/a/a/h/a$a;

.field private static final synthetic i:[Lcom/a/a/h/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/a/a/h/a$a;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/a/a/h/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/a$a;->a:Lcom/a/a/h/a$a;

    new-instance v0, Lcom/a/a/h/a$a;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/a/a/h/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/a$a;->b:Lcom/a/a/h/a$a;

    new-instance v0, Lcom/a/a/h/a$a;

    const-string v1, "WAITING_FOR_SIZE"

    invoke-direct {v0, v1, v5}, Lcom/a/a/h/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/a$a;->c:Lcom/a/a/h/a$a;

    new-instance v0, Lcom/a/a/h/a$a;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/a/a/h/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/a$a;->d:Lcom/a/a/h/a$a;

    new-instance v0, Lcom/a/a/h/a$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/a/a/h/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/a$a;->e:Lcom/a/a/h/a$a;

    new-instance v0, Lcom/a/a/h/a$a;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/h/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/a$a;->f:Lcom/a/a/h/a$a;

    new-instance v0, Lcom/a/a/h/a$a;

    const-string v1, "CLEARED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/a/a/h/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/a$a;->g:Lcom/a/a/h/a$a;

    new-instance v0, Lcom/a/a/h/a$a;

    const-string v1, "PAUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/a/a/h/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/a$a;->h:Lcom/a/a/h/a$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/a/a/h/a$a;

    sget-object v1, Lcom/a/a/h/a$a;->a:Lcom/a/a/h/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/h/a$a;->b:Lcom/a/a/h/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/h/a$a;->c:Lcom/a/a/h/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/h/a$a;->d:Lcom/a/a/h/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/h/a$a;->e:Lcom/a/a/h/a$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/a/a/h/a$a;->f:Lcom/a/a/h/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/a/a/h/a$a;->g:Lcom/a/a/h/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/a/a/h/a$a;->h:Lcom/a/a/h/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/h/a$a;->i:[Lcom/a/a/h/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/h/a$a;
    .locals 1

    const-class v0, Lcom/a/a/h/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/h/a$a;

    return-object v0
.end method

.method public static values()[Lcom/a/a/h/a$a;
    .locals 1

    sget-object v0, Lcom/a/a/h/a$a;->i:[Lcom/a/a/h/a$a;

    invoke-virtual {v0}, [Lcom/a/a/h/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/h/a$a;

    return-object v0
.end method
