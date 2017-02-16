.class final Landroid/text/util/Linkify$3;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, "digitCount":I
    move v5, p2

    .local v5, "i":I
    :goto_0
    if-ge v5, p3, :cond_1

    .line 207
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 206
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 212
    :cond_1
    const/4 v7, 0x5

    .line 213
    .local v7, "phoneNumberMinimumDigit":I
    const/16 v6, 0xd

    .line 215
    .local v6, "phoneNumberMaximumDigit":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    .line 216
    const-string/jumbo v11, "CscFeature_Framework_ConfigLinkifyDigit"

    .line 215
    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "digitsByCSCFeature":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 219
    const/4 v5, 0x0

    .line 220
    const/4 v10, 0x2

    new-array v1, v10, [I

    .line 212
    const/4 v10, 0x5

    .line 220
    const/4 v11, 0x0

    aput v10, v1, v11

    .line 213
    const/16 v10, 0xd

    .line 220
    const/4 v11, 0x1

    aput v10, v1, v11

    .line 221
    .local v1, "digits":[I
    new-instance v8, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v10, 0x3b

    invoke-direct {v8, v10}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 222
    .local v8, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v8, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 224
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 225
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "str":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 227
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v1, v5

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 231
    .end local v9    # "str":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    aget v7, v1, v10

    .line 232
    const/4 v10, 0x1

    aget v6, v1, v10
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    if-gtz v7, :cond_4

    .line 235
    const/4 v7, 0x1

    .line 246
    .end local v1    # "digits":[I
    .end local v8    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_4
    :goto_2
    if-lt v0, v7, :cond_5

    if-gt v0, v6, :cond_5

    .line 247
    const/4 v10, 0x1

    return v10

    .line 241
    .restart local v1    # "digits":[I
    .restart local v8    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_0
    move-exception v4

    .line 242
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "Linkify"

    const-string/jumbo v11, "NumberFormatException occured. CSC value is invalid."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 238
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 239
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v10, "Linkify"

    const-string/jumbo v11, "ArrayIndexOutOfBoundsException occured. CSC value is invalid."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 249
    .end local v1    # "digits":[I
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v8    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_5
    const/4 v10, 0x0

    return v10
.end method
