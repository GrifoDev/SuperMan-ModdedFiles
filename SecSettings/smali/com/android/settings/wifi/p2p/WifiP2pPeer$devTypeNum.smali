.class public final enum Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
.super Ljava/lang/Enum;
.source "WifiP2pPeer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "devTypeNum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum camera:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum game_device:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum keyboard:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum network_infra:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum printer:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum soundbar:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum storage:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum tv:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "pc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "keyboard"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->keyboard:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "printer"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->printer:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "camera"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->camera:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "storage"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->storage:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "network_infra"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->network_infra:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "tv"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->tv:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "soundbar"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->soundbar:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "game_device"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->game_device:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "mobile"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "level_box"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->keyboard:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->printer:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->camera:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->storage:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->network_infra:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->tv:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->soundbar:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->game_device:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->$VALUES:[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    .locals 1

    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->$VALUES:[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mValue:I

    return v0
.end method
