.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 3

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ge v0, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v22

    add-int/lit8 v23, v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v30

    const/16 v31, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-nez v31, :cond_6

    :goto_0
    add-int/lit8 v22, v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v20

    const/16 v31, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-nez v31, :cond_7

    move/from16 v23, v22

    :goto_1
    add-int/lit8 v22, v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v18, 0x0

    const/16 v31, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_0
    if-nez v15, :cond_9

    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v31, 0x5a

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_13

    const/16 v31, 0x2b

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "00"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :cond_3
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    add-int v22, v22, v31

    const-string/jumbo v31, "+0000"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    :cond_4
    sget-object v26, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    :cond_5
    :goto_3
    new-instance v5, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/16 v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v31, v20, -0x1

    const/16 v32, 0x2

    move/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0x5

    move/from16 v0, v31

    invoke-virtual {v5, v0, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0xb

    move/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0xc

    move/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0xd

    move/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v31, 0xe

    move/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v31

    return-object v31

    :cond_6
    add-int/lit8 v22, v23, 0x1

    move/from16 v23, v22

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v22, v22, 0x1

    move/from16 v23, v22

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    new-instance v5, Ljava/util/GregorianCalendar;

    add-int/lit8 v31, v20, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v5, v0, v1, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v31

    return-object v31

    :cond_9
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v23, v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v16

    const/16 v31, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-nez v31, :cond_a

    :goto_4
    add-int/lit8 v22, v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v19

    const/16 v31, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-nez v31, :cond_b

    move/from16 v23, v22

    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v23

    if-gt v0, v1, :cond_c

    move/from16 v22, v23

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v22, v23, 0x1

    move/from16 v23, v22

    goto :goto_4

    :cond_b
    add-int/lit8 v22, v22, 0x1

    move/from16 v23, v22

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v31, 0x5a

    move/from16 v0, v31

    if-ne v4, v0, :cond_e

    :cond_d
    move/from16 v22, v23

    goto/16 :goto_2

    :cond_e
    const/16 v31, 0x2b

    move/from16 v0, v31

    if-eq v4, v0, :cond_d

    const/16 v31, 0x2d

    move/from16 v0, v31

    if-eq v4, v0, :cond_d

    add-int/lit8 v22, v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v25

    const/16 v31, 0x3b

    move/from16 v0, v25

    move/from16 v1, v31

    if-gt v0, v1, :cond_10

    :cond_f
    :goto_6
    const/16 v31, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v31

    if-eqz v31, :cond_1

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v31, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v11

    add-int/lit8 v31, v22, 0x3

    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v14

    sub-int v31, v24, v22

    packed-switch v31, :pswitch_data_0

    move/from16 v18, v14

    :goto_7
    move/from16 v22, v11

    goto/16 :goto_2

    :cond_10
    const/16 v31, 0x3f

    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_f

    const/16 v25, 0x3b

    goto :goto_6

    :pswitch_0
    mul-int/lit8 v18, v14, 0xa

    goto :goto_7

    :pswitch_1
    mul-int/lit8 v18, v14, 0x64

    goto :goto_7

    :cond_11
    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v32, "No time zone indicator"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v9

    move-object v13, v9

    :goto_8
    if-eqz p0, :cond_16

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x22

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_9
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_17

    :cond_12
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_a
    new-instance v12, Ljava/text/ParseException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Failed to parse date ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "]: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-direct {v12, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v12

    :cond_13
    :try_start_1
    sget-object v26, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    :cond_14
    const/16 v31, 0x2d

    move/from16 v0, v28

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    new-instance v31, Ljava/lang/IndexOutOfBoundsException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Invalid time zone indicator \'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v31

    :catch_1
    move-exception v10

    move-object v13, v10

    goto/16 :goto_8

    :cond_15
    const-string/jumbo v31, "+00:00"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "GMT"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    const-string/jumbo v31, ":"

    const-string/jumbo v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    new-instance v31, Ljava/lang/IndexOutOfBoundsException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Mismatching time zone indicator: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " given, resolves to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v31
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    move-exception v8

    move-object v13, v8

    goto/16 :goto_8

    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_12

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v5, 0xa

    if-gez p1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt p2, v4, :cond_0

    if-gt p1, p2, :cond_0

    move v1, p1

    const/4 v3, 0x0

    if-lt p1, p2, :cond_2

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_4

    neg-int v4, v3

    return v4

    :cond_2
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_3

    neg-int v3, v0

    move v2, v1

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_5

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v0

    move v2, v1

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
