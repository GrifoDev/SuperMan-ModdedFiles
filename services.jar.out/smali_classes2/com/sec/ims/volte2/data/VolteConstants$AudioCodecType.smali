.class public final enum Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
.super Ljava/lang/Enum;
.source "VolteConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field public static final enum AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field private static final stringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCodec:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string/jumbo v3, "AUDIO_CODEC_NONE"

    const-string/jumbo v4, "NONE"

    invoke-direct {v2, v3, v1, v4}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string/jumbo v3, "AUDIO_CODEC_AMRWB"

    const-string/jumbo v4, "AMR-WB"

    invoke-direct {v2, v3, v6, v4}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string/jumbo v3, "AUDIO_CODEC_AMRNB"

    const-string/jumbo v4, "AMR-NB"

    invoke-direct {v2, v3, v7, v4}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string/jumbo v3, "AUDIO_CODEC_EVSNB"

    const-string/jumbo v4, "EVS-NB"

    invoke-direct {v2, v3, v8, v4}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string/jumbo v3, "AUDIO_CODEC_EVSWB"

    const-string/jumbo v4, "EVS-WB"

    invoke-direct {v2, v3, v9, v4}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string/jumbo v3, "AUDIO_CODEC_EVSSWB"

    const-string/jumbo v4, "EVS-SWB"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v5, v4}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string/jumbo v3, "AUDIO_CODEC_EVSFB"

    const-string/jumbo v4, "EVS-FB"

    const/4 v5, 0x6

    invoke-direct {v2, v3, v5, v4}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string/jumbo v3, "AUDIO_CODEC_EVS"

    const-string/jumbo v4, "EVS"

    const/4 v5, 0x7

    invoke-direct {v2, v3, v5, v4}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    aput-object v3, v2, v9

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    invoke-static {}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->mCodec:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->stringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    const-class v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 1

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->$VALUES:[Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->mCodec:Ljava/lang/String;

    return-object v0
.end method
