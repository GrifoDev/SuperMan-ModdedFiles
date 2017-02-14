.class Ljava/util/Formatter$FormatSpecifierParser;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatSpecifierParser"
.end annotation


# static fields
.field private static final FLAGS:Ljava/lang/String; = ",-(+# 0<"


# instance fields
.field private conv:Ljava/lang/String;

.field private cursor:I

.field private flags:Ljava/lang/String;

.field private final format:Ljava/lang/String;

.field private fs:Ljava/util/Formatter$FormatSpecifier;

.field private index:Ljava/lang/String;

.field private precision:Ljava/lang/String;

.field private tT:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/Formatter;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Formatter;Ljava/lang/String;I)V
    .locals 9

    const/4 v2, 0x0

    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iput p3, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifierParser;->index:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ",-(+# 0<"

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifierParser;->back(I)V

    goto :goto_0

    :cond_2
    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    :cond_4
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    :cond_5
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    :cond_6
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_7

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    :cond_8
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    new-instance v0, Ljava/util/Formatter$FormatSpecifier;

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->index:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifierParser;->width:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/Formatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    iget-object v6, p0, Ljava/util/Formatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    iget-object v7, p0, Ljava/util/Formatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/Formatter$FormatSpecifier;-><init>(Ljava/util/Formatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->fs:Ljava/util/Formatter$FormatSpecifier;

    return-void
.end method

.method private advance()C
    .locals 3

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string/jumbo v1, "End of String"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private back(I)V
    .locals 1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    return-void
.end method

.method private isEnd()Z
    .locals 2

    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextInt()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    :goto_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private nextIsInt()Z
    .locals 1

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private peek()C
    .locals 2

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string/jumbo v1, "End of String"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method


# virtual methods
.method public getEndIdx()I
    .locals 1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->cursor:I

    return v0
.end method

.method public getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;
    .locals 1

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->fs:Ljava/util/Formatter$FormatSpecifier;

    return-object v0
.end method
