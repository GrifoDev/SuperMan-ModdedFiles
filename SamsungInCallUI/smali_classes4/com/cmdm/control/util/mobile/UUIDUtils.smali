.class public Lcom/cmdm/control/util/mobile/UUIDUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static eI:J = 0x0L

.field private static eJ:J = 0x0L

.field private static final eK:I = 0x24

.field private static final eL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x112bd7b1800L

    sput-wide v0, Lcom/cmdm/control/util/mobile/UUIDUtils;->eI:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/cmdm/control/util/mobile/UUIDUtils;->eI:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/cmdm/control/util/mobile/UUIDUtils;->eJ:J

    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cmdm/control/util/mobile/UUIDUtils;->eL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRandom(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v2, ""

    :goto_0
    if-lt v0, p0, :cond_0

    return-object v2

    :cond_0
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/cmdm/control/util/mobile/UUIDUtils;->getRand(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRand(I)I
    .locals 4

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int v3, v2, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static getUniqueId()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/cmdm/control/util/mobile/UUIDUtils;->getUniqueId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueId(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Lcom/cmdm/control/util/mobile/UUIDUtils;->getUniqueId(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueId(II)Ljava/lang/String;
    .locals 10

    sget-wide v6, Lcom/cmdm/control/util/mobile/UUIDUtils;->eJ:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sput-wide v6, Lcom/cmdm/control/util/mobile/UUIDUtils;->eJ:J

    sget-wide v6, Lcom/cmdm/control/util/mobile/UUIDUtils;->eJ:J

    invoke-static {v6, v7, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v2, v1, p0

    if-lez v2, :cond_1

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cmdm/control/util/mobile/UUIDUtils;->rand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static myRandom(II)I
    .locals 6

    if-le p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int v0, v1, p0

    goto :goto_0
.end method

.method public static rand()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v3, v2, 0x3e

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v3, Lcom/cmdm/control/util/mobile/UUIDUtils;->eL:[Ljava/lang/String;

    aget-object v3, v3, v0

    return-object v3
.end method

.method public static randomMorningTime(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p0, :cond_1

    invoke-static {v4, v3}, Lcom/cmdm/control/util/mobile/UUIDUtils;->myRandom(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-ne v0, v3, :cond_1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-ne p0, v3, :cond_2

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3, v5}, Lcom/cmdm/control/util/mobile/UUIDUtils;->myRandom(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    if-ne p0, v5, :cond_3

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/cmdm/control/util/mobile/UUIDUtils;->myRandom(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x5

    invoke-static {v4, v2}, Lcom/cmdm/control/util/mobile/UUIDUtils;->myRandom(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x9

    invoke-static {v4, v2}, Lcom/cmdm/control/util/mobile/UUIDUtils;->myRandom(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static uuid()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
