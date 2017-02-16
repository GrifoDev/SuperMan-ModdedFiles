.class public final enum Lsun/util/logging/PlatformLogger$Level;
.super Ljava/lang/Enum;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/util/logging/PlatformLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/util/logging/PlatformLogger$Level;

.field public static final enum ALL:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum CONFIG:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINER:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINEST:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum INFO:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum OFF:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum SEVERE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum WARNING:Lsun/util/logging/PlatformLogger$Level;

.field private static final levelValues:[I


# instance fields
.field javaLevel:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    .line 110
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    .line 111
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "FINEST"

    invoke-direct {v0, v1, v4}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    .line 112
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "FINER"

    invoke-direct {v0, v1, v5}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    .line 113
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "FINE"

    invoke-direct {v0, v1, v6}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    .line 114
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "CONFIG"

    invoke-direct {v0, v1, v7}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    .line 115
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    .line 116
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "WARNING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    .line 117
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "SEVERE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    .line 118
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "OFF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [Lsun/util/logging/PlatformLogger$Level;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v3

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v4

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v5

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v6

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v7

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    .line 129
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    .line 107
    return-void

    .line 129
    nop

    :array_0
    .array-data 4
        -0x80000000
        0x12c
        0x190
        0x1f4
        0x2bc
        0x320
        0x384
        0x3e8
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(I)Lsun/util/logging/PlatformLogger$Level;
    .locals 4
    .param p0, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 140
    sparse-switch p0, :sswitch_data_0

    .line 155
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v3, v2, p0}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 156
    .local v0, "i":I
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1

    if-ltz v0, :cond_0

    .end local v0    # "i":I
    :goto_0
    aget-object v1, v1, v0

    return-object v1

    .line 143
    :sswitch_0
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 144
    :sswitch_1
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 145
    :sswitch_2
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 146
    :sswitch_3
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 147
    :sswitch_4
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 148
    :sswitch_5
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 149
    :sswitch_6
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 150
    :sswitch_7
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 151
    :sswitch_8
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 156
    .restart local v0    # "i":I
    :cond_0
    neg-int v2, v0

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_8
        0x12c -> :sswitch_0
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_1
        0x2bc -> :sswitch_5
        0x320 -> :sswitch_3
        0x384 -> :sswitch_4
        0x3e8 -> :sswitch_6
        0x7fffffff -> :sswitch_7
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lsun/util/logging/PlatformLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method public static values()[Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->levelValues:[I

    invoke-virtual {p0}, Lsun/util/logging/PlatformLogger$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method
