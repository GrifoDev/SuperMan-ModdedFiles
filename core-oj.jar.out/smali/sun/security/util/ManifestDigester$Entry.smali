.class public Lsun/security/util/ManifestDigester$Entry;
.super Ljava/lang/Object;
.source "ManifestDigester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/ManifestDigester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field length:I

.field lengthWithBlankLine:I

.field offset:I

.field oldStyle:Z

.field rawBytes:[B


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "lengthWithBlankLine"    # I
    .param p4, "rawBytes"    # [B

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    .line 203
    iput p2, p0, Lsun/security/util/ManifestDigester$Entry;->length:I

    .line 204
    iput p3, p0, Lsun/security/util/ManifestDigester$Entry;->lengthWithBlankLine:I

    .line 205
    iput-object p4, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    .line 200
    return-void
.end method

.method private doOldStyle(Ljava/security/MessageDigest;[BII)V
    .locals 6
    .param p1, "md"    # Ljava/security/MessageDigest;
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 229
    move v0, p3

    .line 230
    .local v0, "i":I
    move v3, p3

    .line 231
    .local v3, "start":I
    add-int v1, p3, p4

    .line 232
    .local v1, "max":I
    const/4 v2, -0x1

    .line 233
    .local v2, "prev":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 234
    aget-byte v4, p2, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_0

    .line 235
    sub-int v4, v0, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, p2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 236
    move v3, v0

    .line 238
    :cond_0
    aget-byte v2, p2, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    sub-int v4, v0, v3

    invoke-virtual {p1, p2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 222
    return-void
.end method


# virtual methods
.method public digest(Ljava/security/MessageDigest;)[B
    .locals 3
    .param p1, "md"    # Ljava/security/MessageDigest;

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 211
    iget-boolean v0, p0, Lsun/security/util/ManifestDigester$Entry;->oldStyle:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    iget v1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    iget v2, p0, Lsun/security/util/ManifestDigester$Entry;->lengthWithBlankLine:I

    invoke-direct {p0, p1, v0, v1, v2}, Lsun/security/util/ManifestDigester$Entry;->doOldStyle(Ljava/security/MessageDigest;[BII)V

    .line 216
    :goto_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    iget v1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    iget v2, p0, Lsun/security/util/ManifestDigester$Entry;->lengthWithBlankLine:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0
.end method

.method public digestWorkaround(Ljava/security/MessageDigest;)[B
    .locals 3
    .param p1, "md"    # Ljava/security/MessageDigest;

    .prologue
    .line 249
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 250
    iget-object v0, p0, Lsun/security/util/ManifestDigester$Entry;->rawBytes:[B

    iget v1, p0, Lsun/security/util/ManifestDigester$Entry;->offset:I

    iget v2, p0, Lsun/security/util/ManifestDigester$Entry;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 251
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method
