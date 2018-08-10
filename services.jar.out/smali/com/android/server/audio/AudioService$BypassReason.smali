.class final enum Lcom/android/server/audio/AudioService$BypassReason;
.super Ljava/lang/Enum;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BypassReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/audio/AudioService$BypassReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "NO_BYPASS"

    invoke-direct {v0, v1, v3}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "DISPLAY_VOLUME_CONTROL"

    invoke-direct {v0, v1, v4}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "CANNOT_UNMUTE_SILENT_VIBRATE"

    invoke-direct {v0, v1, v5}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "ALL_SOUND_MUTE"

    invoke-direct {v0, v1, v6}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "TMS_CONNECT"

    invoke-direct {v0, v1, v7}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "CONSUME_ADJUST_SAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "MULTISOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "MEDIA_VOLUME_STEP_ON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "SKIP_WARNING_POPUP_VISIBLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "SKIP_VOLUME_PANEL_NOT_VISIBLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "VOLUME_LIMITER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$BypassReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/server/audio/AudioService$BypassReason;

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->TMS_CONNECT:Lcom/android/server/audio/AudioService$BypassReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/audio/AudioService$BypassReason;->VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/audio/AudioService$BypassReason;
    .locals 1

    const-class v0, Lcom/android/server/audio/AudioService$BypassReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$BypassReason;

    return-object v0
.end method

.method public static values()[Lcom/android/server/audio/AudioService$BypassReason;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    return-object v0
.end method
