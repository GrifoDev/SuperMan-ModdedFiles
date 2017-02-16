.class public Lcom/android/contacts/common/util/SearchUtil;
.super Ljava/lang/Object;
.source "SearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/SearchUtil$MatchedLine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 175
    .local v2, "start":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 176
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 177
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    .end local v0    # "codePoint":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 185
    const-string v3, ""

    .line 202
    :goto_1
    return-object v3

    .line 180
    .restart local v0    # "codePoint":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 181
    goto :goto_0

    .line 188
    .end local v0    # "codePoint":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 189
    .local v1, "end":I
    :goto_2
    const/4 v3, -0x1

    if-le v1, v3, :cond_4

    .line 190
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    add-int/lit8 v1, v1, -0x1

    .line 194
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 195
    .restart local v0    # "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 202
    .end local v0    # "codePoint":I
    :cond_4
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 198
    .restart local v0    # "codePoint":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 199
    goto :goto_2
.end method

.method static contains(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "substring"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    move v1, v8

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    new-array v4, v9, [I

    .line 101
    .local v4, "substringCodePoints":[I
    const/4 v6, 0x0

    .line 102
    .local v6, "substringLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 103
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 104
    .local v0, "codePoint":I
    aput v0, v4, v6

    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v1, v9

    .line 107
    goto :goto_1

    .line 109
    .end local v0    # "codePoint":I
    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, "numMatch":I
    move v2, v1

    .local v2, "j":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    if-ge v3, v6, :cond_3

    .line 112
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    .line 113
    .local v7, "valueCp":I
    aget v5, v4, v3

    .line 114
    .local v5, "substringCp":I
    if-eq v7, v5, :cond_4

    .line 119
    .end local v5    # "substringCp":I
    .end local v7    # "valueCp":I
    :cond_3
    if-eq v3, v6, :cond_0

    .line 109
    invoke-static {p0, v1}, Lcom/android/contacts/common/util/SearchUtil;->findNextTokenStart(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    .line 117
    .restart local v5    # "substringCp":I
    .restart local v7    # "valueCp":I
    :cond_4
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v2, v9

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v2    # "j":I
    .end local v3    # "numMatch":I
    .end local v5    # "substringCp":I
    .end local v7    # "valueCp":I
    :cond_5
    move v1, v8

    .line 123
    goto :goto_0
.end method

.method public static findMatchingLine(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/util/SearchUtil$MatchedLine;
    .locals 7
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "substring"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    .line 50
    new-instance v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;

    invoke-direct {v2}, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;-><init>()V

    .line 54
    .local v2, "matched":Lcom/android/contacts/common/util/SearchUtil$MatchedLine;
    invoke-static {p0, p1}, Lcom/android/contacts/common/util/SearchUtil;->contains(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, "index":I
    if-eq v1, v5, :cond_2

    .line 57
    add-int/lit8 v3, v1, -0x1

    .line 58
    .local v3, "start":I
    :goto_0
    if-le v3, v5, :cond_0

    .line 59
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    .line 64
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 65
    .local v0, "end":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    .line 71
    :cond_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    .line 72
    add-int/lit8 v4, v3, 0x1

    sub-int v4, v1, v4

    iput v4, v2, Lcom/android/contacts/common/util/SearchUtil$MatchedLine;->startIndex:I

    .line 74
    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_2
    return-object v2

    .line 62
    .restart local v3    # "start":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 69
    .restart local v0    # "end":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static findNextTokenStart(Ljava/lang/String;I)I
    .locals 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "startIndex"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 136
    move v1, p1

    .line 139
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_1

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_0

    move v2, v1

    .line 163
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    return v2

    .line 144
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 145
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    .end local v0    # "codePoint":I
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_4

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_3

    move v2, v1

    .line 154
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 148
    .end local v2    # "index":I
    .restart local v0    # "codePoint":I
    .restart local v1    # "index":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 149
    goto :goto_0

    .line 156
    .end local v0    # "codePoint":I
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 157
    .restart local v0    # "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .end local v0    # "codePoint":I
    :cond_4
    move v2, v1

    .line 163
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 160
    .end local v2    # "index":I
    .restart local v0    # "codePoint":I
    .restart local v1    # "index":I
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 161
    goto :goto_2
.end method
