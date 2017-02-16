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
    .param p1, "strength"    # I
    .param p2, "chars"    # Ljava/lang/StringBuffer;
    .param p3, "extension"    # Ljava/lang/StringBuffer;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/PatternEntry;->strength:I

    .line 304
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    .line 305
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    .line 192
    iput p1, p0, Ljava/text/PatternEntry;->strength:I

    .line 193
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    .line 194
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    .line 190
    return-void

    .line 195
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v3, 0x27

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "inQuote":Z
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 153
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    const/4 v1, 0x1

    .line 155
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    :cond_1
    return-void

    .line 157
    :cond_2
    invoke-static {v0}, Ljava/text/PatternEntry;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    const/4 v1, 0x1

    .line 159
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 161
    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 172
    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 164
    :sswitch_0
    const/4 v1, 0x1

    .line 165
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 168
    :sswitch_1
    const/4 v1, 0x1

    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 161
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
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    const/16 v2, 0x20

    if-eq p0, v2, :cond_0

    .line 293
    const/16 v2, 0x2f

    if-gt p0, v2, :cond_1

    const/16 v2, 0x22

    if-lt p0, v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    const/16 v2, 0x3f

    if-gt p0, v2, :cond_2

    const/16 v2, 0x3a

    if-ge p0, v2, :cond_0

    .line 295
    :cond_2
    const/16 v2, 0x60

    if-gt p0, v2, :cond_3

    const/16 v2, 0x5b

    if-ge p0, v2, :cond_0

    .line 296
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
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;
    .param p2, "showExtension"    # Z
    .param p3, "showWhiteSpace"    # Z
    .param p4, "lastEntry"    # Ljava/text/PatternEntry;

    .prologue
    const/16 v2, 0x26

    const/16 v1, 0x20

    .line 119
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 120
    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    if-eqz v0, :cond_0

    if-eqz p4, :cond_6

    .line 121
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    if-eqz p3, :cond_2

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    :cond_2
    invoke-virtual {p4, p1}, Ljava/text/PatternEntry;->appendQuotedChars(Ljava/lang/StringBuffer;)V

    .line 129
    invoke-virtual {p0, p1}, Ljava/text/PatternEntry;->appendQuotedExtension(Ljava/lang/StringBuffer;)V

    .line 130
    if-eqz p3, :cond_3

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    :cond_3
    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_1
    if-eqz p3, :cond_4

    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :cond_4
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 144
    if-eqz p2, :cond_5

    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 117
    :cond_5
    return-void

    .line 123
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 134
    :pswitch_0
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 135
    :pswitch_1
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 136
    :pswitch_2
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 137
    :pswitch_3
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 138
    :pswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 139
    :pswitch_5
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 133
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
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 63
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 62
    return-void
.end method

.method public appendQuotedExtension(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 56
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 55
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 72
    if-nez p1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    move-object v0, p1

    .line 73
    check-cast v0, Ljava/text/PatternEntry;

    .line 74
    .local v0, "other":Ljava/text/PatternEntry;
    iget-object v2, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 75
    .local v1, "result":Z
    return v1
.end method

.method final getChars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    return-object v0
.end method

.method final getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    return-object v0
.end method

.method final getStrength()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
