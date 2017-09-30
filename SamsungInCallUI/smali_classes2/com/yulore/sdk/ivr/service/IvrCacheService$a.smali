.class final enum Lcom/yulore/sdk/ivr/service/IvrCacheService$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/service/IvrCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulore/sdk/ivr/service/IvrCacheService$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

.field public static final enum b:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

.field private static final synthetic c:[Lcom/yulore/sdk/ivr/service/IvrCacheService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    const-string v1, "UPDATE_ALL"

    invoke-direct {v0, v1, v2}, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    new-instance v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    const-string v1, "UPDATE_INC"

    invoke-direct {v0, v1, v3}, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->a:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->b:Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->c:[Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yulore/sdk/ivr/service/IvrCacheService$a;
    .locals 1

    const-class v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    return-object v0
.end method

.method public static values()[Lcom/yulore/sdk/ivr/service/IvrCacheService$a;
    .locals 1

    sget-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->c:[Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    invoke-virtual {v0}, [Lcom/yulore/sdk/ivr/service/IvrCacheService$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulore/sdk/ivr/service/IvrCacheService$a;

    return-object v0
.end method
