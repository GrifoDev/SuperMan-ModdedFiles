.class Landroid/media/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCParser$1;,
        Landroid/media/Cea708CCParser$CaptionColor;,
        Landroid/media/Cea708CCParser$CaptionEvent;,
        Landroid/media/Cea708CCParser$CaptionPenAttr;,
        Landroid/media/Cea708CCParser$CaptionPenColor;,
        Landroid/media/Cea708CCParser$CaptionPenLocation;,
        Landroid/media/Cea708CCParser$CaptionWindow;,
        Landroid/media/Cea708CCParser$CaptionWindowAttr;,
        Landroid/media/Cea708CCParser$Const;,
        Landroid/media/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field public static final CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final mBuffer:Ljava/lang/StringBuffer;

.field private mCommand:I

.field private mListener:Landroid/media/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "\u266b"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/media/Cea708CCParser$DisplayListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    new-instance v0, Landroid/media/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroid/media/Cea708CCParser$1;-><init>(Landroid/media/Cea708CCParser;)V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    :cond_0
    return-void
.end method

.method private emitCaptionBuffer()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    return-void
.end method

.method private emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    invoke-interface {v0, p1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return-void
.end method

.method private parseC0([BI)I
    .locals 6

    const/16 v5, 0x18

    const/4 v4, 0x2

    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-lt v2, v5, :cond_2

    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_2

    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ne v2, v5, :cond_0

    :try_start_0
    aget-byte v2, p1, p2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, 0x2

    :goto_1
    :sswitch_0
    return p2

    :cond_1
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const-string/jumbo v3, "EUC-KR"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Cea708CCParser"

    const-string/jumbo v3, "P16 Code - Could not find supported encoding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v3, 0x17

    if-gt v2, v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_1
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    :sswitch_2
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    :sswitch_3
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_5
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
    .end sparse-switch
.end method

.method private parseC1([BI)I
    .locals 49

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/Cea708CCParser;->mCommand:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    return p2

    :pswitch_1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 v25, v5, -0x80

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_0

    :pswitch_2
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    add-int/lit8 p2, p2, 0x1

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_0

    :pswitch_3
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    add-int/lit8 p2, p2, 0x1

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x5

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_0

    :pswitch_4
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    add-int/lit8 p2, p2, 0x1

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x6

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto :goto_0

    :pswitch_5
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    add-int/lit8 p2, p2, 0x1

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x7

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :pswitch_6
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v48, v0

    add-int/lit8 p2, p2, 0x1

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :pswitch_7
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    move/from16 v47, v0

    add-int/lit8 p2, p2, 0x1

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v13, 0xa

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v5, v13, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v13, 0xb

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v5, v13, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :pswitch_a
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v8, v5, 0x4

    aget-byte v5, p1, p2

    and-int/lit8 v6, v5, 0x3

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v7, v5, 0x2

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    const/4 v12, 0x1

    :goto_1
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    const/4 v11, 0x1

    :goto_2
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x38

    shr-int/lit8 v10, v5, 0x3

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v9, v5, 0x7

    add-int/lit8 p2, p2, 0x2

    new-instance v13, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v5, Landroid/media/Cea708CCParser$CaptionPenAttr;

    invoke-direct/range {v5 .. v12}, Landroid/media/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-direct {v13, v0, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    :pswitch_b
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v44, v5, 0x6

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    aget-byte v5, p1, p2

    and-int/lit8 v39, v5, 0x3

    new-instance v42, Landroid/media/Cea708CCParser$CaptionColor;

    move-object/from16 v0, v42

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v43

    move/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 p2, p2, 0x1

    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v44, v5, 0x6

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    aget-byte v5, p1, p2

    and-int/lit8 v39, v5, 0x3

    new-instance v38, Landroid/media/Cea708CCParser$CaptionColor;

    move-object/from16 v0, v38

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v43

    move/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 p2, p2, 0x1

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    aget-byte v5, p1, p2

    and-int/lit8 v39, v5, 0x3

    new-instance v41, Landroid/media/Cea708CCParser$CaptionColor;

    const/4 v5, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v45

    move/from16 v2, v43

    move/from16 v3, v39

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 p2, p2, 0x1

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v13, Landroid/media/Cea708CCParser$CaptionPenColor;

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    move-object/from16 v2, v41

    invoke-direct {v13, v0, v1, v2}, Landroid/media/Cea708CCParser$CaptionPenColor;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V

    const/16 v24, 0xd

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :pswitch_c
    aget-byte v5, p1, p2

    and-int/lit8 v46, v5, 0xf

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v40, v5, 0x3f

    add-int/lit8 p2, p2, 0x2

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v13, Landroid/media/Cea708CCParser$CaptionPenLocation;

    move/from16 v0, v46

    move/from16 v1, v40

    invoke-direct {v13, v0, v1}, Landroid/media/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :pswitch_d
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v44, v5, 0x6

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    aget-byte v5, p1, p2

    and-int/lit8 v39, v5, 0x3

    new-instance v14, Landroid/media/Cea708CCParser$CaptionColor;

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v43

    move/from16 v3, v39

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v13, p2, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x5

    or-int v16, v5, v13

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v45, v5, 0x4

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v43, v5, 0x2

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v39, v5, 0x3

    new-instance v15, Landroid/media/Cea708CCParser$CaptionColor;

    const/4 v5, 0x0

    move/from16 v0, v45

    move/from16 v1, v43

    move/from16 v2, v39

    invoke-direct {v15, v5, v0, v1, v2}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2

    const/16 v17, 0x1

    :goto_3
    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v18, v5, 0x4

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v19, v5, 0x2

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v20, v5, 0x3

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v22, v5, 0x4

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xc

    shr-int/lit8 v21, v5, 0x2

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v23, v5, 0x3

    add-int/lit8 p2, p2, 0x4

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v13, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    invoke-direct/range {v13 .. v23}, Landroid/media/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V

    const/16 v24, 0xf

    move/from16 v0, v24

    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :cond_2
    const/16 v17, 0x0

    goto :goto_3

    :pswitch_e
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit16 v0, v5, -0x98

    move/from16 v25, v0

    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    const/16 v26, 0x1

    :goto_4
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    const/16 v27, 0x1

    :goto_5
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_5

    const/16 v28, 0x1

    :goto_6
    aget-byte v5, p1, p2

    and-int/lit8 v29, v5, 0x7

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    const/16 v30, 0x1

    :goto_7
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v31, v5, 0x7f

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v32, v0

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v33, v5, 0x4

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v34, v5, 0xf

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, p1, v5

    and-int/lit8 v35, v5, 0x3f

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x38

    shr-int/lit8 v37, v5, 0x3

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/lit8 v36, v5, 0x7

    add-int/lit8 p2, p2, 0x6

    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v24, Landroid/media/Cea708CCParser$CaptionWindow;

    invoke-direct/range {v24 .. v37}, Landroid/media/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    const/16 v13, 0x10

    move-object/from16 v0, v24

    invoke-direct {v5, v13, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    goto/16 :goto_0

    :cond_3
    const/16 v26, 0x0

    goto :goto_4

    :cond_4
    const/16 v27, 0x0

    goto :goto_5

    :cond_5
    const/16 v28, 0x0

    goto :goto_6

    :cond_6
    const/16 v30, 0x0

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private parseC2([BI)I
    .locals 2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_3

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x3

    goto :goto_0
.end method

.method private parseC3([BI)I
    .locals 2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x87

    if-gt v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x4

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x88

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x8f

    if-gt v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x5

    goto :goto_0
.end method

.method private parseExt1([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC2([BI)I

    move-result p2

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x9f

    if-gt v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC3([BI)I

    move-result p2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG2([BI)I

    move-result p2

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG3([BI)I

    move-result p2

    goto :goto_0
.end method

.method private parseG0([BI)I
    .locals 2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return p2

    :cond_0
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private parseG1([BI)I
    .locals 2

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p2
.end method

.method private parseG2([BI)I
    .locals 1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    return p2
.end method

.method private parseG3([BI)I
    .locals 2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xa0

    return p2
.end method

.method private parseServiceBlockData([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseExt1([BI)I

    move-result p2

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC0([BI)I

    move-result p2

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x9f

    if-gt v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC1([BI)I

    move-result p2

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_4

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_4

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG0([BI)I

    move-result p2

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG1([BI)I

    move-result p2

    goto :goto_0
.end method


# virtual methods
.method public parse([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    return-void
.end method
