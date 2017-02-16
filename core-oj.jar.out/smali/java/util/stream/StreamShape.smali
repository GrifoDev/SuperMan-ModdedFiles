.class public final enum Ljava/util/stream/StreamShape;
.super Ljava/lang/Enum;
.source "StreamShape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/stream/StreamShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/stream/StreamShape;

.field public static final enum DOUBLE_VALUE:Ljava/util/stream/StreamShape;

.field public static final enum INT_VALUE:Ljava/util/stream/StreamShape;

.field public static final enum LONG_VALUE:Ljava/util/stream/StreamShape;

.field public static final enum REFERENCE:Ljava/util/stream/StreamShape;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Ljava/util/stream/StreamShape;

    const-string/jumbo v1, "REFERENCE"

    invoke-direct {v0, v1, v2}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 56
    new-instance v0, Ljava/util/stream/StreamShape;

    const-string/jumbo v1, "INT_VALUE"

    invoke-direct {v0, v1, v3}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    .line 60
    sput-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    .line 61
    new-instance v0, Ljava/util/stream/StreamShape;

    const-string/jumbo v1, "LONG_VALUE"

    invoke-direct {v0, v1, v4}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    .line 65
    sput-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 66
    new-instance v0, Ljava/util/stream/StreamShape;

    const-string/jumbo v1, "DOUBLE_VALUE"

    invoke-direct {v0, v1, v5}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    .line 70
    sput-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/stream/StreamShape;

    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    aput-object v1, v0, v4

    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    aput-object v1, v0, v5

    sput-object v0, Ljava/util/stream/StreamShape;->$VALUES:[Ljava/util/stream/StreamShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/stream/StreamShape;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Ljava/util/stream/StreamShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public static values()[Ljava/util/stream/StreamShape;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Ljava/util/stream/StreamShape;->$VALUES:[Ljava/util/stream/StreamShape;

    return-object v0
.end method
