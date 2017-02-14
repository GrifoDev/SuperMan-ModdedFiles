.class public final enum Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;
.super Ljava/lang/Enum;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

.field public static final enum b:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

.field public static final enum c:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

.field private static final synthetic f:[Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    const-string/jumbo v1, "ONE_DEPTH"

    const-string/jumbo v2, "\u0002"

    const-string/jumbo v3, "\u0003"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    const-string/jumbo v1, "TWO_DEPTH"

    const-string/jumbo v2, "\u0004"

    const-string/jumbo v3, "\u0005"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    const-string/jumbo v1, "THREE_DEPTH"

    const-string/jumbo v2, "\u0006"

    const-string/jumbo v3, "\u0007"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->f:[Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;
    .locals 1

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    return-object v0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->f:[Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->e:Ljava/lang/String;

    return-object v0
.end method
