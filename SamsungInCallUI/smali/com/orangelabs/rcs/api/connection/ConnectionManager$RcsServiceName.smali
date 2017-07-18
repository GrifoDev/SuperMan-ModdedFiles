.class public final enum Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;
.super Ljava/lang/Enum;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orangelabs/rcs/api/connection/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RcsServiceName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum CAPABILITY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum CHAT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum CONTACT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum FILE_TRANSFER:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum FILE_UPLOAD:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum GEOLOC_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum HISTORY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum IMAGE_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum MULTIMEDIA:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

.field public static final enum VIDEO_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "CAPABILITY"

    invoke-direct {v0, v1, v3}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CAPABILITY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v4}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CONTACT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CHAT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "FILE_TRANSFER"

    invoke-direct {v0, v1, v6}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_TRANSFER:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "IMAGE_SHARING"

    invoke-direct {v0, v1, v7}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->IMAGE_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "VIDEO_SHARING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->VIDEO_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "GEOLOC_SHARING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->GEOLOC_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "FILE_UPLOAD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_UPLOAD:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "MULTIMEDIA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->MULTIMEDIA:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const-string v1, "HISTORY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->HISTORY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CAPABILITY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CONTACT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CHAT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_TRANSFER:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->IMAGE_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->VIDEO_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->GEOLOC_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_UPLOAD:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->MULTIMEDIA:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->HISTORY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->$VALUES:[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

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

.method public static valueOf(Ljava/lang/String;)Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;
    .locals 1

    const-class v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    return-object v0
.end method

.method public static values()[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;
    .locals 1

    sget-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->$VALUES:[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-virtual {v0}, [Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    return-object v0
.end method
