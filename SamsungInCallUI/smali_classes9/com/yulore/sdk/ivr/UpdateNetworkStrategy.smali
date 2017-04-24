.class public final enum Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;
.super Ljava/lang/Enum;
.source "UpdateNetworkStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

.field public static final enum MOBILE_NETWORK:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

.field public static final enum NEVER_UPDATE:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

.field public static final enum UNLIMIT:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

.field public static final enum WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;


# instance fields
.field private networkType:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    const-string v1, "MOBILE_NETWORK"

    const-string v2, "2G/3G/4G"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->MOBILE_NETWORK:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    new-instance v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    const-string v1, "WIFI"

    const-string v2, "wifi"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    new-instance v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    const-string v1, "UNLIMIT"

    const-string v2, "unlimit"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->UNLIMIT:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    new-instance v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    const-string v1, "NEVER_UPDATE"

    const-string v2, "never_update"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->NEVER_UPDATE:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->MOBILE_NETWORK:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->UNLIMIT:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->NEVER_UPDATE:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->$VALUES:[Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

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

    iput-object p3, p0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->networkType:Ljava/lang/String;

    iput p4, p0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;
    .locals 1

    const-class v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    return-object v0
.end method

.method public static values()[Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;
    .locals 1

    sget-object v0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->$VALUES:[Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v0}, [Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    return-object v0
.end method


# virtual methods
.method public getNetworkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->value:I

    return v0
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->networkType:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->value:I

    return-void
.end method
