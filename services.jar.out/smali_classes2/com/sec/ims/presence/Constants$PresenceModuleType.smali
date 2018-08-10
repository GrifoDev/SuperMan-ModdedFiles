.class public final enum Lcom/sec/ims/presence/Constants$PresenceModuleType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresenceModuleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/presence/Constants$PresenceModuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/presence/Constants$PresenceModuleType;

.field public static final enum TYPE_ALL:Lcom/sec/ims/presence/Constants$PresenceModuleType;

.field public static final enum TYPE_PRESENCE:Lcom/sec/ims/presence/Constants$PresenceModuleType;

.field public static final enum TYPE_UCE:Lcom/sec/ims/presence/Constants$PresenceModuleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;

    const-string/jumbo v1, "TYPE_PRESENCE"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/presence/Constants$PresenceModuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;->TYPE_PRESENCE:Lcom/sec/ims/presence/Constants$PresenceModuleType;

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;

    const-string/jumbo v1, "TYPE_UCE"

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/presence/Constants$PresenceModuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;->TYPE_UCE:Lcom/sec/ims/presence/Constants$PresenceModuleType;

    new-instance v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;

    const-string/jumbo v1, "TYPE_ALL"

    invoke-direct {v0, v1, v4}, Lcom/sec/ims/presence/Constants$PresenceModuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;->TYPE_ALL:Lcom/sec/ims/presence/Constants$PresenceModuleType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/ims/presence/Constants$PresenceModuleType;

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceModuleType;->TYPE_PRESENCE:Lcom/sec/ims/presence/Constants$PresenceModuleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceModuleType;->TYPE_UCE:Lcom/sec/ims/presence/Constants$PresenceModuleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/presence/Constants$PresenceModuleType;->TYPE_ALL:Lcom/sec/ims/presence/Constants$PresenceModuleType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;->$VALUES:[Lcom/sec/ims/presence/Constants$PresenceModuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/presence/Constants$PresenceModuleType;
    .locals 1

    const-class v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/presence/Constants$PresenceModuleType;
    .locals 1

    sget-object v0, Lcom/sec/ims/presence/Constants$PresenceModuleType;->$VALUES:[Lcom/sec/ims/presence/Constants$PresenceModuleType;

    return-object v0
.end method
