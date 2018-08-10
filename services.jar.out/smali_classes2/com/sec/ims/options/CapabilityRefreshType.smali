.class public final enum Lcom/sec/ims/options/CapabilityRefreshType;
.super Ljava/lang/Enum;
.source "CapabilityRefreshType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/options/CapabilityRefreshType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ONLY_IF_EXPIRED:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

.field public static final enum ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string/jumbo v1, "ONLY_IF_NOT_FRESH"

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string/jumbo v1, "ONLY_IF_EXPIRED"

    invoke-direct {v0, v1, v4}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_EXPIRED:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string/jumbo v1, "ALWAYS_FORCE_REFRESH"

    invoke-direct {v0, v1, v5}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string/jumbo v1, "ONLY_IF_NOT_FRESH_IN_MSG_CTX"

    invoke-direct {v0, v1, v6}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v7}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string/jumbo v1, "FORCE_REFRESH_UCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    new-instance v0, Lcom/sec/ims/options/CapabilityRefreshType;

    const-string/jumbo v1, "FORCE_REFRESH_SYNC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/options/CapabilityRefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/ims/options/CapabilityRefreshType;

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_EXPIRED:Lcom/sec/ims/options/CapabilityRefreshType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->$VALUES:[Lcom/sec/ims/options/CapabilityRefreshType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;
    .locals 1

    const-class v0, Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/options/CapabilityRefreshType;
    .locals 1

    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->$VALUES:[Lcom/sec/ims/options/CapabilityRefreshType;

    return-object v0
.end method
