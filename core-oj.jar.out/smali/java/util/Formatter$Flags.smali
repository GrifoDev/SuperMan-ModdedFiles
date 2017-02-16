.class Ljava/util/Formatter$Flags;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flags"
.end annotation


# static fields
.field static final ALTERNATE:Ljava/util/Formatter$Flags;

.field static final GROUP:Ljava/util/Formatter$Flags;

.field static final LEADING_SPACE:Ljava/util/Formatter$Flags;

.field static final LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

.field static final NONE:Ljava/util/Formatter$Flags;

.field static final PARENTHESES:Ljava/util/Formatter$Flags;

.field static final PLUS:Ljava/util/Formatter$Flags;

.field static final PREVIOUS:Ljava/util/Formatter$Flags;

.field static final UPPERCASE:Ljava/util/Formatter$Flags;

.field static final ZERO_PAD:Ljava/util/Formatter$Flags;


# instance fields
.field private flags:I


# direct methods
.method static synthetic -wrap0(Ljava/util/Formatter$Flags;Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .locals 1
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4227
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->NONE:Ljava/util/Formatter$Flags;

    .line 4230
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    .line 4231
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    .line 4232
    new-instance v0, Ljava/util/Formatter$Flags;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    .line 4235
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    .line 4236
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    .line 4237
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    .line 4238
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    .line 4239
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    .line 4242
    new-instance v0, Ljava/util/Formatter$Flags;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    sput-object v0, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    .line 4224
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "f"    # I

    .prologue
    .line 4244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4245
    iput p1, p0, Ljava/util/Formatter$Flags;->flags:I

    .line 4244
    return-void
.end method

.method private add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .locals 2
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .prologue
    .line 4261
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljava/util/Formatter$Flags;->flags:I

    .line 4262
    return-object p0
.end method

.method private static parse(C)Ljava/util/Formatter$Flags;
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 4284
    sparse-switch p0, :sswitch_data_0

    .line 4294
    new-instance v0, Ljava/util/UnknownFormatFlagsException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4285
    :sswitch_0
    sget-object v0, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4286
    :sswitch_1
    sget-object v0, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4287
    :sswitch_2
    sget-object v0, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4288
    :sswitch_3
    sget-object v0, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4289
    :sswitch_4
    sget-object v0, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4290
    :sswitch_5
    sget-object v0, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4291
    :sswitch_6
    sget-object v0, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4292
    :sswitch_7
    sget-object v0, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    return-object v0

    .line 4284
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_3
        0x23 -> :sswitch_1
        0x28 -> :sswitch_6
        0x2b -> :sswitch_2
        0x2c -> :sswitch_5
        0x2d -> :sswitch_0
        0x30 -> :sswitch_4
        0x3c -> :sswitch_7
    .end sparse-switch
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Formatter$Flags;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 4271
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4272
    .local v0, "ca":[C
    new-instance v1, Ljava/util/Formatter$Flags;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/util/Formatter$Flags;-><init>(I)V

    .line 4273
    .local v1, "f":Ljava/util/Formatter$Flags;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 4274
    aget-char v4, v0, v2

    invoke-static {v4}, Ljava/util/Formatter$Flags;->parse(C)Ljava/util/Formatter$Flags;

    move-result-object v3

    .line 4275
    .local v3, "v":Ljava/util/Formatter$Flags;
    invoke-virtual {v1, v3}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4276
    new-instance v4, Ljava/util/DuplicateFormatFlagsException;

    invoke-virtual {v3}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4277
    :cond_0
    invoke-direct {v1, v3}, Ljava/util/Formatter$Flags;->add(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;

    .line 4273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4279
    .end local v3    # "v":Ljava/util/Formatter$Flags;
    :cond_1
    return-object v1
.end method

.method public static toString(Ljava/util/Formatter$Flags;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Ljava/util/Formatter$Flags;

    .prologue
    .line 4300
    invoke-virtual {p0}, Ljava/util/Formatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/util/Formatter$Flags;)Z
    .locals 2
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .prologue
    .line 4253
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dup()Ljava/util/Formatter$Flags;
    .locals 2

    .prologue
    .line 4257
    new-instance v0, Ljava/util/Formatter$Flags;

    iget v1, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-direct {v0, v1}, Ljava/util/Formatter$Flags;-><init>(I)V

    return-object v0
.end method

.method public remove(Ljava/util/Formatter$Flags;)Ljava/util/Formatter$Flags;
    .locals 2
    .param p1, "f"    # Ljava/util/Formatter$Flags;

    .prologue
    .line 4266
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    invoke-virtual {p1}, Ljava/util/Formatter$Flags;->valueOf()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/Formatter$Flags;->flags:I

    .line 4267
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4305
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/util/Formatter$Flags;->LEFT_JUSTIFY:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4306
    :cond_0
    sget-object v1, Ljava/util/Formatter$Flags;->UPPERCASE:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4307
    :cond_1
    sget-object v1, Ljava/util/Formatter$Flags;->ALTERNATE:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4308
    :cond_2
    sget-object v1, Ljava/util/Formatter$Flags;->PLUS:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4309
    :cond_3
    sget-object v1, Ljava/util/Formatter$Flags;->LEADING_SPACE:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4310
    :cond_4
    sget-object v1, Ljava/util/Formatter$Flags;->ZERO_PAD:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4311
    :cond_5
    sget-object v1, Ljava/util/Formatter$Flags;->GROUP:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4312
    :cond_6
    sget-object v1, Ljava/util/Formatter$Flags;->PARENTHESES:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4313
    :cond_7
    sget-object v1, Ljava/util/Formatter$Flags;->PREVIOUS:Ljava/util/Formatter$Flags;

    invoke-virtual {p0, v1}, Ljava/util/Formatter$Flags;->contains(Ljava/util/Formatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4314
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueOf()I
    .locals 1

    .prologue
    .line 4249
    iget v0, p0, Ljava/util/Formatter$Flags;->flags:I

    return v0
.end method
