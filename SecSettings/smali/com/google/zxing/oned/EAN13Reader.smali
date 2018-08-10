.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN13Reader.java"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [I

    aput v1, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0xd

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0xe

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x13

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x19

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x1c

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x15

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x16

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x1a

    const/16 v2, 0x9

    aput v1, v0, v2

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    return-void
.end method
