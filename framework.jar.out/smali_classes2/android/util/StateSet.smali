.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final NOTHING:[I

.field public static final VIEW_STATE_ACCELERATED:I = 0x40

.field public static final VIEW_STATE_ACTIVATED:I = 0x20

.field public static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final VIEW_STATE_ENABLED:I = 0x8

.field public static final VIEW_STATE_FOCUSED:I = 0x4

.field public static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_PRESSED:I = 0x10

.field public static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field public static final VIEW_STATE_SPEN_HOVERED:I = 0x400

.field public static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final WILD_CARD:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v9, 0x16

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    sput-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    const/4 v1, 0x0

    :goto_0
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    const/4 v2, 0x0

    :goto_1
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_2

    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_1

    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    shl-int v9, v13, v0

    new-array v9, v9, [[I

    sput-object v9, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    const/4 v1, 0x0

    :goto_2
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    new-array v7, v3, [I

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_3
    array-length v9, v4

    if-ge v2, v9, :cond_5

    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    add-int/lit8 v6, v5, 0x1

    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_5
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-array v9, v12, [I

    sput-object v9, Landroid/util/StateSet;->WILD_CARD:[I

    new-array v9, v13, [I

    aput v12, v9, v12

    sput-object v9, Landroid/util/StateSet;->NOTHING:[I

    return-void

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
        0x111014a
        0x400
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAttribute([[II)Z
    .locals 8

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p0, v4

    if-nez v0, :cond_1

    :cond_0
    return v3

    :cond_1
    array-length v6, v0

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_4

    aget v1, v0, v2

    if-eq v1, p1, :cond_2

    neg-int v7, v1

    if-ne v7, p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0
.end method

.method public static dump([I)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    sparse-switch v3, :sswitch_data_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "W "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "P "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "S "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "E "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "C "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "A "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_3
        0x101009d -> :sswitch_0
        0x101009e -> :sswitch_4
        0x10100a0 -> :sswitch_5
        0x10100a1 -> :sswitch_2
        0x10100a7 -> :sswitch_1
        0x10102fe -> :sswitch_6
    .end sparse-switch
.end method

.method public static get(I)[I
    .locals 2

    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v0, v0

    if-lt p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid state set mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static isWildCard([I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p0

    if-eqz v2, :cond_0

    aget v2, p0, v1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static stateSetMatches([II)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget v2, p0, v0

    if-nez v2, :cond_0

    return v5

    :cond_0
    if-lez v2, :cond_1

    if-eq p1, v2, :cond_2

    return v4

    :cond_1
    neg-int v3, v2

    if-ne p1, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static stateSetMatches([I[I)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v8

    :cond_0
    return v8

    :cond_1
    array-length v6, p0

    array-length v5, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_9

    aget v7, p0, v1

    if-nez v7, :cond_2

    return v8

    :cond_2
    if-lez v7, :cond_3

    const/4 v3, 0x1

    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_5

    aget v4, p1, v2

    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    return v10

    :cond_3
    const/4 v3, 0x0

    neg-int v7, v7

    goto :goto_1

    :cond_4
    if-ne v4, v7, :cond_7

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    :cond_5
    if-eqz v3, :cond_8

    xor-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_8

    return v10

    :cond_6
    return v10

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return v8
.end method

.method public static trimStateSet([II)[I
    .locals 3

    const/4 v2, 0x0

    array-length v1, p0

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    new-array v0, p1, [I

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v0
.end method
