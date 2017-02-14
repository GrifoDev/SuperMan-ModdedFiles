.class public Ljava/nio/charset/CoderResult;
.super Ljava/lang/Object;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/charset/CoderResult$1;,
        Ljava/nio/charset/CoderResult$2;,
        Ljava/nio/charset/CoderResult$Cache;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CR_ERROR_MIN:I = 0x2

.field private static final CR_MALFORMED:I = 0x2

.field private static final CR_OVERFLOW:I = 0x1

.field private static final CR_UNDERFLOW:I = 0x0

.field private static final CR_UNMAPPABLE:I = 0x3

.field public static final OVERFLOW:Ljava/nio/charset/CoderResult;

.field public static final UNDERFLOW:Ljava/nio/charset/CoderResult;

.field private static malformedCache:Ljava/nio/charset/CoderResult$Cache;

.field private static final names:[Ljava/lang/String;

.field private static unmappableCache:Ljava/nio/charset/CoderResult$Cache;


# instance fields
.field private final length:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Ljava/nio/charset/CoderResult;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ljava/nio/charset/CoderResult;->-assertionsDisabled:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "UNDERFLOW"

    aput-object v3, v0, v1

    const-string/jumbo v3, "OVERFLOW"

    aput-object v3, v0, v2

    const-string/jumbo v3, "MALFORMED"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string/jumbo v3, "UNMAPPABLE"

    const/4 v4, 0x3

    aput-object v3, v0, v4

    sput-object v0, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    new-instance v0, Ljava/nio/charset/CoderResult;

    invoke-direct {v0, v1, v1}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    new-instance v0, Ljava/nio/charset/CoderResult;

    invoke-direct {v0, v2, v1}, Ljava/nio/charset/CoderResult;-><init>(II)V

    sput-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    new-instance v0, Ljava/nio/charset/CoderResult$1;

    invoke-direct {v0}, Ljava/nio/charset/CoderResult$1;-><init>()V

    sput-object v0, Ljava/nio/charset/CoderResult;->malformedCache:Ljava/nio/charset/CoderResult$Cache;

    new-instance v0, Ljava/nio/charset/CoderResult$2;

    invoke-direct {v0}, Ljava/nio/charset/CoderResult$2;-><init>()V

    sput-object v0, Ljava/nio/charset/CoderResult;->unmappableCache:Ljava/nio/charset/CoderResult$Cache;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/nio/charset/CoderResult;->type:I

    iput p2, p0, Ljava/nio/charset/CoderResult;->length:I

    return-void
.end method

.method synthetic constructor <init>(IILjava/nio/charset/CoderResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/nio/charset/CoderResult;-><init>(II)V

    return-void
.end method

.method public static malformedForLength(I)Ljava/nio/charset/CoderResult;
    .locals 1

    sget-object v0, Ljava/nio/charset/CoderResult;->malformedCache:Ljava/nio/charset/CoderResult$Cache;

    invoke-static {v0, p0}, Ljava/nio/charset/CoderResult$Cache;->-wrap0(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public static unmappableForLength(I)Ljava/nio/charset/CoderResult;
    .locals 1

    sget-object v0, Ljava/nio/charset/CoderResult;->unmappableCache:Ljava/nio/charset/CoderResult$Cache;

    invoke-static {v0, p0}, Ljava/nio/charset/CoderResult$Cache;->-wrap0(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isError()Z
    .locals 2

    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMalformed()Z
    .locals 2

    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflow()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderflow()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/nio/charset/CoderResult;->type:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUnmappable()Z
    .locals 2

    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/nio/charset/CoderResult;->length:I

    return v0
.end method

.method public throwException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    iget v0, p0, Ljava/nio/charset/CoderResult;->type:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Ljava/nio/charset/CoderResult;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    iget v1, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v1, Ljava/nio/charset/CoderResult;->names:[Ljava/lang/String;

    iget v2, p0, Ljava/nio/charset/CoderResult;->type:I

    aget-object v0, v1, v2

    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/nio/charset/CoderResult;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
