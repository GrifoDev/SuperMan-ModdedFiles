.class public final enum Lcom/yulore/sdk/ivr/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulore/sdk/ivr/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yulore/sdk/ivr/b;

.field public static final enum b:Lcom/yulore/sdk/ivr/b;

.field public static final enum c:Lcom/yulore/sdk/ivr/b;

.field public static final enum d:Lcom/yulore/sdk/ivr/b;

.field private static final synthetic g:[Lcom/yulore/sdk/ivr/b;


# instance fields
.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/yulore/sdk/ivr/b;

    const-string v1, "MOBILE_NETWORK"

    const-string v2, "2G/3G/4G"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/yulore/sdk/ivr/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/b;->a:Lcom/yulore/sdk/ivr/b;

    new-instance v0, Lcom/yulore/sdk/ivr/b;

    const-string v1, "WIFI"

    const-string v2, "wifi"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/yulore/sdk/ivr/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/b;->b:Lcom/yulore/sdk/ivr/b;

    new-instance v0, Lcom/yulore/sdk/ivr/b;

    const-string v1, "UNLIMIT"

    const-string v2, "unlimit"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/yulore/sdk/ivr/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/b;->c:Lcom/yulore/sdk/ivr/b;

    new-instance v0, Lcom/yulore/sdk/ivr/b;

    const-string v1, "NEVER_UPDATE"

    const-string v2, "never_update"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yulore/sdk/ivr/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/b;->d:Lcom/yulore/sdk/ivr/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yulore/sdk/ivr/b;

    sget-object v1, Lcom/yulore/sdk/ivr/b;->a:Lcom/yulore/sdk/ivr/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yulore/sdk/ivr/b;->b:Lcom/yulore/sdk/ivr/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulore/sdk/ivr/b;->c:Lcom/yulore/sdk/ivr/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulore/sdk/ivr/b;->d:Lcom/yulore/sdk/ivr/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yulore/sdk/ivr/b;->g:[Lcom/yulore/sdk/ivr/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/yulore/sdk/ivr/b;->e:Ljava/lang/String;

    iput p4, p0, Lcom/yulore/sdk/ivr/b;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulore/sdk/ivr/b;
    .locals 1

    const-class v0, Lcom/yulore/sdk/ivr/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/b;

    return-object v0
.end method

.method public static values()[Lcom/yulore/sdk/ivr/b;
    .locals 1

    sget-object v0, Lcom/yulore/sdk/ivr/b;->g:[Lcom/yulore/sdk/ivr/b;

    invoke-virtual {v0}, [Lcom/yulore/sdk/ivr/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulore/sdk/ivr/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/b;->e:Ljava/lang/String;

    return-object v0
.end method
