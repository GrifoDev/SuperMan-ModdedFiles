.class Ljava/text/PatternEntry$Parser;
.super Ljava/lang/Object;
.source "PatternEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/PatternEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parser"
.end annotation


# instance fields
.field private i:I

.field private newChars:Ljava/lang/StringBuffer;

.field private newExtension:Ljava/lang/StringBuffer;

.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    .line 203
    iput-object p1, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 202
    return-void
.end method


# virtual methods
.method public next()Ljava/text/PatternEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 208
    const/4 v3, -0x1

    .line 210
    .local v3, "newStrength":I
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 213
    const/4 v1, 0x1

    .line 214
    .local v1, "inChars":Z
    const/4 v2, 0x0

    .line 216
    .local v2, "inQuote":Z
    :goto_0
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 217
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 218
    .local v0, "ch":C
    if-eqz v2, :cond_3

    .line 219
    const/16 v4, 0x27

    if-ne v0, v4, :cond_0

    .line 220
    const/4 v2, 0x0

    .line 269
    :goto_1
    :sswitch_0
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    goto :goto_0

    .line 222
    :cond_0
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 223
    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 224
    :cond_2
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 226
    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 251
    if-ne v3, v6, :cond_9

    .line 252
    new-instance v5, Ljava/text/ParseException;

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "missing char (=,;<&) : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 254
    iget-object v7, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v8, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 255
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0xa

    iget-object v9, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 256
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0xa

    .line 254
    :goto_2
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 252
    invoke-direct {v5, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 227
    :sswitch_1
    if-eq v3, v6, :cond_5

    .line 271
    .end local v0    # "ch":C
    :cond_4
    if-ne v3, v6, :cond_c

    .line 272
    const/4 v4, 0x0

    return-object v4

    .line 228
    .restart local v0    # "ch":C
    :cond_5
    const/4 v3, 0x3

    goto :goto_1

    .line 229
    :sswitch_2
    if-ne v3, v6, :cond_4

    .line 230
    const/4 v3, 0x2

    goto :goto_1

    .line 231
    :sswitch_3
    if-ne v3, v6, :cond_4

    .line 232
    const/4 v3, 0x1

    goto :goto_1

    .line 233
    :sswitch_4
    if-ne v3, v6, :cond_4

    .line 234
    const/4 v3, 0x0

    goto :goto_1

    .line 235
    :sswitch_5
    if-ne v3, v6, :cond_4

    .line 236
    const/4 v3, -0x2

    goto :goto_1

    .line 242
    :sswitch_6
    const/4 v1, 0x0

    goto :goto_1

    .line 244
    :sswitch_7
    const/4 v2, 0x1

    .line 245
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 246
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 247
    :cond_6
    if-eqz v1, :cond_7

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 248
    :cond_7
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 256
    :cond_8
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    .line 259
    :cond_9
    invoke-static {v0}, Ljava/text/PatternEntry;->isSpecialChar(C)Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 260
    new-instance v4, Ljava/text/ParseException;

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unquoted punctuation character : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 260
    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 262
    :cond_a
    if-eqz v1, :cond_b

    .line 263
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 265
    :cond_b
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 273
    .end local v0    # "ch":C
    :cond_c
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 274
    new-instance v5, Ljava/text/ParseException;

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "missing chars (=,;<&): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 276
    iget-object v7, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v8, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 277
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0xa

    iget-object v9, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_d

    .line 278
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0xa

    .line 276
    :goto_3
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 274
    invoke-direct {v5, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 278
    :cond_d
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3

    .line 282
    :cond_e
    new-instance v4, Ljava/text/PatternEntry;

    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    iget-object v6, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-direct {v4, v3, v5, v6}, Ljava/text/PatternEntry;-><init>(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    return-object v4

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x26 -> :sswitch_5
        0x27 -> :sswitch_7
        0x2c -> :sswitch_2
        0x2f -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_4
        0x3d -> :sswitch_1
    .end sparse-switch
.end method
