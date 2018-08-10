.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PatternMatcher$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PATTERN_STORAGE:I = 0x800

.field private static final NO_MATCH:I = -0x1

.field private static final PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final TOKEN_TYPE_ANY:I = 0x1

.field private static final TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final TOKEN_TYPE_LITERAL:I = 0x0

.field private static final TOKEN_TYPE_SET:I = 0x2

.field private static final sParsedPatternScratch:[I


# instance fields
.field private final mParsedPattern:[I

.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    goto :goto_0
.end method

.method private static isParsedModifier(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x8

    if-eq p0, v1, :cond_0

    const/4 v1, -0x7

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, -0x6

    if-eq p0, v1, :cond_0

    const/4 v1, -0x5

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static matchAdvancedPattern([ILjava/lang/String;)Z
    .locals 13

    const/4 v10, 0x0

    const/4 v1, 0x0

    array-length v9, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v10, v9, :cond_6

    aget v12, p0, v10

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    move v7, v10

    const/4 v3, 0x0

    add-int/lit8 v10, v10, 0x1

    :goto_1
    if-lt v10, v9, :cond_3

    const/4 v5, 0x1

    const/4 v4, 0x1

    :goto_2
    if-le v4, v5, :cond_4

    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v3, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v0, -0x1

    if-ne v12, v0, :cond_2

    const/4 v3, 0x2

    :goto_3
    add-int/lit8 v7, v10, 0x1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v9, :cond_1

    aget v0, p0, v10

    const/4 v6, -0x3

    if-ne v0, v6, :cond_0

    :cond_1
    add-int/lit8 v8, v10, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    goto :goto_3

    :cond_3
    aget v12, p0, v10

    packed-switch v12, :pswitch_data_1

    :pswitch_3
    const/4 v5, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :pswitch_4
    const/4 v4, 0x0

    const v5, 0x7fffffff

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :pswitch_5
    const/4 v4, 0x1

    const v5, 0x7fffffff

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :pswitch_6
    add-int/lit8 v10, v10, 0x1

    aget v4, p0, v10

    add-int/lit8 v10, v10, 0x1

    aget v5, p0, v10

    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_4
    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v8}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    move-result v11

    const/4 v0, -0x1

    if-ne v11, v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    add-int/2addr v1, v11

    goto :goto_0

    :cond_6
    if-lt v10, v9, :cond_7

    if-lt v1, v2, :cond_7

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static matchChar(Ljava/lang/String;III[III)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p1, p2, :cond_0

    return v3

    :cond_0
    packed-switch p3, :pswitch_data_0

    return v3

    :pswitch_0
    return v2

    :pswitch_1
    move v0, p5

    :goto_0
    if-ge v0, p6, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v4, p4, v0

    if-lt v1, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    aget v4, p4, v4

    if-gt v1, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return v3

    :pswitch_2
    move v0, p5

    :goto_1
    if-ge v0, p6, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget v4, p4, v0

    if-lt v1, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    aget v4, p4, v4

    if-gt v1, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    return v2

    :pswitch_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v5, p4, p5

    if-ne v4, v5, :cond_5

    :goto_2
    return v2

    :cond_5
    move v2, v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static matchChars(Ljava/lang/String;IIIII[III)I
    .locals 8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p5, :cond_0

    add-int v1, p1, v7

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-ge v7, p4, :cond_1

    const/4 v7, -0x1

    :cond_1
    return v7
.end method

.method static matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/16 v12, 0x5c

    const/16 v11, 0x2a

    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_1
    if-ge v5, v1, :cond_13

    if-ge v4, v0, :cond_13

    move v2, v6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_2
    if-ne v2, v12, :cond_4

    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_2

    move v2, v6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :cond_2
    :goto_4
    if-ne v6, v11, :cond_11

    if-nez v3, :cond_e

    if-ne v2, v10, :cond_e

    add-int/lit8 v9, v1, -0x1

    if-lt v5, v9, :cond_6

    return v7

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_7

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :cond_7
    :goto_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_a

    :cond_8
    if-ne v4, v0, :cond_b

    return v8

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_8

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_c

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_c
    const/4 v6, 0x0

    goto :goto_6

    :cond_d
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_f

    :cond_e
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_d

    :cond_f
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_10

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_1

    :cond_10
    const/4 v6, 0x0

    goto :goto_1

    :cond_11
    if-eq v2, v10, :cond_12

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_12

    return v8

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_13
    if-lt v5, v1, :cond_14

    if-lt v4, v0, :cond_14

    return v7

    :cond_14
    add-int/lit8 v9, v1, -0x2

    if-ne v5, v9, :cond_15

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_15

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_15

    return v7

    :cond_15
    return v8
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method static declared-synchronized parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .locals 22

    const-class v20, Landroid/os/PatternMatcher;

    monitor-enter v20

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    move v13, v12

    :goto_0
    if-ge v11, v2, :cond_15

    const/16 v19, 0x7fd

    move/from16 v0, v19

    if-le v13, v0, :cond_0

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Pattern is too large!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v3, 0x0

    sparse-switch v4, :sswitch_data_0

    const/4 v3, 0x1

    :goto_1
    if-eqz v10, :cond_f

    if-eqz v8, :cond_d

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    aput v4, v19, v13

    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    goto :goto_0

    :sswitch_0
    if-eqz v10, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v21, 0x5e

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x2

    aput v21, v19, v13

    add-int/lit8 v11, v11, 0x1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x1

    move v13, v12

    goto :goto_0

    :cond_2
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x1

    aput v21, v19, v13

    goto :goto_3

    :sswitch_1
    if-nez v10, :cond_3

    const/4 v3, 0x1

    move v12, v13

    :goto_4
    move v13, v12

    goto :goto_1

    :cond_3
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v15, v19, v21

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_4

    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v15, v0, :cond_5

    :cond_4
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "You must define characters in a set."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_5
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x3

    aput v21, v19, v13

    const/4 v10, 0x0

    const/4 v8, 0x0

    goto :goto_4

    :sswitch_2
    if-nez v10, :cond_1c

    if-eqz v13, :cond_6

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v19, v19, v21

    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_6
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Modifier must follow a token."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_7
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x5

    aput v21, v19, v13

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x1

    :goto_5
    move v13, v12

    goto/16 :goto_1

    :sswitch_3
    if-eqz v9, :cond_1b

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x6

    aput v21, v19, v13

    const/4 v9, 0x0

    :goto_6
    move v13, v12

    goto/16 :goto_1

    :sswitch_4
    if-nez v10, :cond_1a

    if-eqz v13, :cond_8

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v19, v19, v21

    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v19

    if-eqz v19, :cond_9

    :cond_8
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Modifier must follow a token."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_9
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x7

    aput v21, v19, v13

    :goto_7
    move v13, v12

    goto/16 :goto_1

    :sswitch_5
    if-nez v10, :cond_19

    if-eqz v13, :cond_a

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v21, v13, -0x1

    aget v19, v19, v21

    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v19

    if-eqz v19, :cond_b

    :cond_a
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Modifier must follow a token."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_b
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x8

    aput v21, v19, v13

    :goto_8
    move v13, v12

    goto/16 :goto_1

    :sswitch_6
    if-nez v10, :cond_18

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    const/16 v21, -0x4

    aput v21, v19, v13

    :goto_9
    move v13, v12

    goto/16 :goto_1

    :sswitch_7
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_c

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Escape found at end of pattern!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v19, v11, 0x2

    move/from16 v0, v19

    if-ge v0, v2, :cond_e

    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v21, 0x2d

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    add-int/lit8 v19, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v21, 0x5d

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    const/4 v8, 0x1

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    aput v4, v19, v13

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_e
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    aput v4, v19, v13

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v12, 0x1

    aput v4, v19, v12

    move v12, v13

    goto/16 :goto_2

    :cond_f
    if-eqz v9, :cond_14

    const/16 v19, 0x7d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v7, :cond_10

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Range not ended with \'}\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2c

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-gez v5, :cond_11

    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move/from16 v16, v14

    move/from16 v17, v14

    :goto_a
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_13

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Range quantifier minimum is greater than maximum"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v6

    move v12, v13

    :goto_b
    :try_start_3
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Range number format incorrect"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_12

    const v16, 0x7fffffff

    goto :goto_a

    :cond_12
    add-int/lit8 v19, v5, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    goto :goto_a

    :cond_13
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v12, v13, 0x1

    :try_start_5
    aput v17, v19, v13

    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v13, v12, 0x1

    :try_start_6
    aput v16, v19, v12
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v11, v7

    goto/16 :goto_0

    :cond_14
    if-eqz v3, :cond_17

    :try_start_7
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v13, 0x1

    aput v4, v19, v13

    goto/16 :goto_2

    :cond_15
    if-eqz v10, :cond_16

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Set was not terminated!"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_16
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([II)[I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v19

    monitor-exit v20

    return-object v19

    :catch_1
    move-exception v6

    goto :goto_b

    :cond_17
    move v12, v13

    goto/16 :goto_2

    :cond_18
    move v12, v13

    goto/16 :goto_9

    :cond_19
    move v12, v13

    goto/16 :goto_8

    :cond_1a
    move v12, v13

    goto/16 :goto_7

    :cond_1b
    move v12, v13

    goto/16 :goto_6

    :cond_1c
    move v12, v13

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_4
        0x2b -> :sswitch_5
        0x2e -> :sswitch_6
        0x5b -> :sswitch_0
        0x5c -> :sswitch_7
        0x5d -> :sswitch_1
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, v2}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "? "

    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string/jumbo v0, "LITERAL: "

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "PREFIX: "

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "GLOB: "

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "ADVANCED: "

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
