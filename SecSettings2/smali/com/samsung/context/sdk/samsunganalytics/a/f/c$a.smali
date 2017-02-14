.class public final enum Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;
.super Ljava/lang/Enum;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

.field public static final enum b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

.field public static final enum c:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

.field private static final synthetic d:[Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    const-string/jumbo v1, "DLC"

    invoke-direct {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    const-string/jumbo v1, "DLS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    const-string/jumbo v1, "INTENT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->d:[Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;
    .locals 1

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    return-object v0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->d:[Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    return-object v0
.end method
