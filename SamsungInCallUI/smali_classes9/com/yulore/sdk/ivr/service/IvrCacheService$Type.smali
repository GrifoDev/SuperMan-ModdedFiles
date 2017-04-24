.class final enum Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
.super Ljava/lang/Enum;
.source "IvrCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/service/IvrCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

.field public static final enum UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

.field public static final enum UPDATE_INC:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    const-string v1, "UPDATE_ALL"

    invoke-direct {v0, v1, v2}, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    new-instance v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    const-string v1, "UPDATE_INC"

    invoke-direct {v0, v1, v3}, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_INC:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_ALL:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->UPDATE_INC:Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->$VALUES:[Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
    .locals 1

    const-class v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    return-object v0
.end method

.method public static values()[Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;
    .locals 1

    sget-object v0, Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->$VALUES:[Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    invoke-virtual {v0}, [Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulore/sdk/ivr/service/IvrCacheService$Type;

    return-object v0
.end method
