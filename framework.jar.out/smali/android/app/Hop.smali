.class public Landroid/app/Hop;
.super Ljava/lang/Object;
.source "Hop.java"


# static fields
.field private static final BARWIDTH_MAX:I = 0xff

.field private static final BARWIDTH_MIN:I = 0x0

.field private static final INTER_PACKET_DELAY_MAX:I = 0xffff

.field private static final INTER_PACKET_DELAY_MIN:I = 0x1

.field private static final INTER_SYM_DELAY_MAX:I = 0xffff

.field private static final INTER_SYM_DELAY_MIN:I = 0x1

.field private static final PACKET_COUNT_MAX:I = 0xff

.field private static final PACKET_COUNT_MIN:I = 0x1

.field private static final SYMBOL_COUNT_MAX:I = 0xff

.field private static final SYMBOL_COUNT_MIN:I = 0x1


# instance fields
.field public barWidth:I

.field public interPacketDelay:I

.field public interSymbolDelay:I

.field public packetCnt:I

.field public symbolCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "barWidth"    # I
    .param p2, "symbolCnt"    # I
    .param p3, "interSymbolDelay"    # I
    .param p4, "packetCnt"    # I
    .param p5, "interPacketDelay"    # I

    .prologue
    const v2, 0xffff

    const/16 v1, 0xff

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-gez p1, :cond_5

    const/4 p1, 0x0

    .line 108
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_6

    const/4 p2, 0x1

    .line 111
    :cond_1
    :goto_1
    if-ge p3, v0, :cond_7

    const/4 p3, 0x1

    .line 114
    :cond_2
    :goto_2
    if-ge p4, v0, :cond_8

    const/4 p4, 0x1

    .line 117
    :cond_3
    :goto_3
    if-ge p5, v0, :cond_9

    const/4 p5, 0x1

    .line 121
    :cond_4
    :goto_4
    iput p1, p0, Landroid/app/Hop;->barWidth:I

    .line 122
    iput p2, p0, Landroid/app/Hop;->symbolCnt:I

    .line 123
    iput p3, p0, Landroid/app/Hop;->interSymbolDelay:I

    .line 124
    iput p4, p0, Landroid/app/Hop;->packetCnt:I

    .line 125
    iput p5, p0, Landroid/app/Hop;->interPacketDelay:I

    .line 103
    return-void

    .line 106
    :cond_5
    if-le p1, v1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    .line 109
    :cond_6
    if-le p2, v1, :cond_1

    const/16 p2, 0xff

    goto :goto_1

    .line 112
    :cond_7
    if-le p3, v2, :cond_2

    const p3, 0xffff

    goto :goto_2

    .line 115
    :cond_8
    if-le p4, v1, :cond_3

    const/16 p4, 0xff

    goto :goto_3

    .line 118
    :cond_9
    if-le p5, v2, :cond_4

    const p5, 0xffff

    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const v4, 0xffff

    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "ss":[Ljava/lang/String;
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Hop;->barWidth:I

    .line 77
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Hop;->symbolCnt:I

    .line 78
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Hop;->interSymbolDelay:I

    .line 79
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Hop;->packetCnt:I

    .line 80
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Hop;->interPacketDelay:I

    .line 83
    iget v1, p0, Landroid/app/Hop;->barWidth:I

    if-gez v1, :cond_5

    iput v5, p0, Landroid/app/Hop;->barWidth:I

    .line 86
    :cond_0
    :goto_0
    iget v1, p0, Landroid/app/Hop;->symbolCnt:I

    if-ge v1, v2, :cond_6

    iput v2, p0, Landroid/app/Hop;->symbolCnt:I

    .line 89
    :cond_1
    :goto_1
    iget v1, p0, Landroid/app/Hop;->interSymbolDelay:I

    if-ge v1, v2, :cond_7

    iput v2, p0, Landroid/app/Hop;->interSymbolDelay:I

    .line 92
    :cond_2
    :goto_2
    iget v1, p0, Landroid/app/Hop;->packetCnt:I

    if-ge v1, v2, :cond_8

    iput v2, p0, Landroid/app/Hop;->packetCnt:I

    .line 95
    :cond_3
    :goto_3
    iget v1, p0, Landroid/app/Hop;->interPacketDelay:I

    if-ge v1, v2, :cond_9

    iput v2, p0, Landroid/app/Hop;->interPacketDelay:I

    .line 74
    :cond_4
    :goto_4
    return-void

    .line 84
    :cond_5
    iget v1, p0, Landroid/app/Hop;->barWidth:I

    if-le v1, v3, :cond_0

    iput v3, p0, Landroid/app/Hop;->barWidth:I

    goto :goto_0

    .line 87
    :cond_6
    iget v1, p0, Landroid/app/Hop;->symbolCnt:I

    if-le v1, v3, :cond_1

    iput v3, p0, Landroid/app/Hop;->symbolCnt:I

    goto :goto_1

    .line 90
    :cond_7
    iget v1, p0, Landroid/app/Hop;->interSymbolDelay:I

    if-le v1, v4, :cond_2

    iput v4, p0, Landroid/app/Hop;->interSymbolDelay:I

    goto :goto_2

    .line 93
    :cond_8
    iget v1, p0, Landroid/app/Hop;->packetCnt:I

    if-le v1, v3, :cond_3

    iput v3, p0, Landroid/app/Hop;->packetCnt:I

    goto :goto_3

    .line 96
    :cond_9
    iget v1, p0, Landroid/app/Hop;->interPacketDelay:I

    if-le v1, v4, :cond_4

    iput v4, p0, Landroid/app/Hop;->interPacketDelay:I

    goto :goto_4
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/app/Hop;->barWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Hop;->symbolCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Hop;->interSymbolDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Hop;->packetCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Hop;->interPacketDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
