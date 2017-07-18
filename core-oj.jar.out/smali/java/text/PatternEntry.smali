.class Ljava/text/PatternEntry;
.super Ljava/lang/Object;
.source "PatternEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/PatternEntry$Parser;
    }
.end annotation


# static fields
.field static final RESET:I = -0x2

.field static final UNSET:I = -0x1


# instance fields
.field chars:Ljava/lang/String;

.field extension:Ljava/lang/String;

.field strength:I


# direct methods
.method constructor <init>(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/text/PatternEntry;->strength:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    iput p1, p0, Ljava/text/PatternEntry;->strength:I

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4

    const/16 v3, 0x27

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    return-void

    :cond_2
    invoke-static {v0}, Ljava/text/PatternEntry;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x27 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method static isSpecialChar(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-eq p0, v2, :cond_0

    const/16 v2, 0x2f

    if-gt p0, v2, :cond_1

    const/16 v2, 0x22

    if-lt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x3f

    if-gt p0, v2, :cond_2

    const/16 v2, 0x3a

    if-ge p0, v2, :cond_0

    :cond_2
    const/16 v2, 0x60

    if-gt p0, v2, :cond_3

    const/16 v2, 0x5b

    if-ge p0, v2, :cond_0

    :cond_3
    const/16 v2, 0x7e

    if-gt p0, v2, :cond_4

    const/16 v2, 0x7b

    if-ge p0, v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V
    .locals 3

    const/16 v2, 0x26

    const/16 v1, 0x20

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    if-eqz v0, :cond_0

    if-eqz p4, :cond_6

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p4, p1}, Ljava/text/PatternEntry;->appendQuotedChars(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, p1}, Ljava/text/PatternEntry;->appendQuotedExtension(Ljava/lang/StringBuffer;)V

    if-eqz p3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    if-eqz p2, :cond_5

    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public appendQuotedChars(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public appendQuotedExtension(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/text/PatternEntry;

    iget-object v2, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method final getChars()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    return-object v0
.end method

.method final getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    return-object v0
.end method

.method final getStrength()I
    .locals 1

    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
