.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final CHUNK_SIZE_BYTES:I = 0x100000

.field private static final CONTENT_DIGEST_CHUNKED_SHA256:I = 0x1

.field private static final CONTENT_DIGEST_CHUNKED_SHA512:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME:Ljava/lang/String; = "X-Android-APK-Signed"

.field private static final SIGNATURE_DSA_WITH_SHA256:I = 0x301

.field private static final SIGNATURE_ECDSA_WITH_SHA256:I = 0x201

.field private static final SIGNATURE_ECDSA_WITH_SHA512:I = 0x202

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x103

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512:I = 0x104

.field private static final SIGNATURE_RSA_PSS_WITH_SHA256:I = 0x101

.field private static final SIGNATURE_RSA_PSS_WITH_SHA512:I = 0x102


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static compareContentDigestAlgorithm(II)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digestAlgorithm1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    packed-switch p1, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digestAlgorithm2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, -0x1

    return v0

    :pswitch_3
    packed-switch p1, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digestAlgorithm2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static compareSignatureAlgorithm(II)I
    .locals 3

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v0

    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareContentDigestAlgorithm(II)I

    move-result v2

    return v2
.end method

.method private static computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    const-wide/16 v30, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    :goto_0
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    aget-object v17, p1, v29

    invoke-interface/range {v17 .. v17}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getChunkCount(J)J

    move-result-wide v34

    add-long v30, v30, v34

    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v32, 0x1fffff

    cmp-long v29, v30, v32

    if-ltz v29, :cond_1

    new-instance v29, Ljava/security/DigestException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Too many chunks: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_1
    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v12, v0, [[B

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    aget v10, p0, v16

    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v11

    mul-int v29, v28, v11

    add-int/lit8 v29, v29, 0x5

    move/from16 v0, v29

    new-array v8, v0, [B

    const/16 v29, 0x5a

    const/16 v32, 0x0

    aput-byte v29, v8, v32

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v8, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    aput-object v8, v12, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v29, 0x5

    move/from16 v0, v29

    new-array v5, v0, [B

    const/16 v29, -0x5b

    const/16 v32, 0x0

    aput-byte v29, v5, v32

    const/4 v6, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/security/MessageDigest;

    move-object/from16 v25, v0

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    aget v29, p0, v16

    invoke-static/range {v29 .. v29}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v19

    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v29

    aput-object v29, v25, v16
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :catch_0
    move-exception v14

    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " digest not supported"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    :cond_3
    const/4 v9, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    aget-object v17, p1, v29

    const-wide/16 v20, 0x0

    invoke-interface/range {v17 .. v17}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    move-result-wide v22

    :goto_4
    const-wide/16 v34, 0x0

    cmp-long v33, v22, v34

    if-lez v33, :cond_7

    const-wide/32 v34, 0x100000

    move-wide/from16 v0, v22

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v7, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-static {v7, v5, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_4

    aget-object v33, v25, v16

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_4
    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x0

    :goto_6
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_6

    aget v10, p0, v16

    aget-object v8, v12, v16

    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v15

    aget-object v24, v25, v16

    mul-int v33, v6, v15

    add-int/lit8 v33, v33, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v8, v1, v15}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v4

    if-eq v4, v15, :cond_5

    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Unexpected output size of "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v24 .. v24}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " digest: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    :catch_1
    move-exception v13

    new-instance v29, Ljava/security/DigestException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Failed to digest chunk #"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " of section #"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v13}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    :cond_6
    int-to-long v0, v7

    move-wide/from16 v34, v0

    add-long v20, v20, v34

    int-to-long v0, v7

    move-wide/from16 v34, v0

    sub-long v22, v22, v34

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [[B

    move-object/from16 v27, v0

    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    aget v10, p0, v16

    aget-object v18, v12, v16

    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v19

    :try_start_2
    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v26

    aput-object v26, v27, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :catch_2
    move-exception v14

    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " digest not supported"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    :cond_9
    return-object v27
.end method

.method private static findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/16 v10, 0x8

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/lit8 v7, v7, -0x18

    invoke-static {p0, v10, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v10, :cond_0

    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    const-wide/16 v8, 0x4

    cmp-long v7, v4, v8

    if-ltz v7, :cond_1

    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    :cond_1
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " size out of range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    long-to-int v2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int v3, v7, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v2, v7, :cond_3

    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " size out of range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", available: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v7, 0x7109871a

    if-ne v1, v7, :cond_4

    add-int/lit8 v7, v2, -0x4

    invoke-static {v6, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    return-object v7

    :cond_4
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_5
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v8, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const-wide/16 v12, 0x20

    cmp-long v11, p1, v12

    if-gez v11, :cond_0

    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    const/16 v11, 0x18

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    int-to-long v12, v11

    sub-long v12, p1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x20676953204b5041L

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    :cond_1
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v12, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    int-to-long v12, v11

    cmp-long v11, v6, v12

    if-ltz v11, :cond_3

    const-wide/32 v12, 0x7ffffff7

    cmp-long v11, v6, v12

    if-lez v11, :cond_4

    :cond_3
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Signing Block size out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    const-wide/16 v12, 0x8

    add-long/2addr v12, v6

    long-to-int v10, v12

    int-to-long v12, v10

    sub-long v4, p1, v12

    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-gez v11, :cond_5

    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Signing Block offset out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    cmp-long v11, v8, v6

    if-eqz v11, :cond_6

    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " vs "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    return-object v11
.end method

.method private static findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v12

    iget-object v8, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/nio/ByteBuffer;

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Landroid/util/apk/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v9, "ZIP64 APK not supported"

    invoke-direct {v0, v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v8, v6, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    move-result-object v11

    iget-object v10, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)V

    return-object v0
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int v0, v2, p1

    if-lt v0, v2, :cond_1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/nio/BufferUnderflowException;

    invoke-direct {v4}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v4

    :cond_2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v3

    :catchall_0
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4
.end method

.method private static getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    cmp-long v4, v0, p1

    if-lez v4, :cond_0

    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ZIP Central Directory offset out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". ZIP End of Central Directory offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-eqz v4, :cond_1

    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    return-wide v0
.end method

.method private static final getChunkCount(J)J
    .locals 6

    const-wide/32 v4, 0x100000

    add-long v0, p0, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    return-wide v0
.end method

.method private static getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "SHA-256"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SHA-512"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getContentDigestAlgorithmOutputSizeBytes(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x20

    return v0

    :pswitch_1
    const/16 v0, 0x40

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v2, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v1, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static getSignatureAlgorithmContentDigestAlgorithm(I)I
    .locals 4

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_1
        0x103 -> :sswitch_0
        0x104 -> :sswitch_1
        0x201 -> :sswitch_0
        0x202 -> :sswitch_1
        0x301 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;
    .locals 4

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v0, "RSA"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "EC"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "DSA"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x103 -> :sswitch_0
        0x104 -> :sswitch_0
        0x201 -> :sswitch_1
        0x202 -> :sswitch_1
        0x301 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v6, "SHA256withRSA/PSS"

    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const-string/jumbo v1, "SHA-256"

    const-string/jumbo v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x20

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_1
    const-string/jumbo v6, "SHA512withRSA/PSS"

    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const-string/jumbo v1, "SHA-512"

    const-string/jumbo v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x40

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "SHA256withRSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "SHA512withRSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "SHA256withECDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "SHA512withECDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "SHA256withDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_1
        0x103 -> :sswitch_2
        0x104 -> :sswitch_3
        0x201 -> :sswitch_4
        0x202 -> :sswitch_5
        0x301 -> :sswitch_6
    .end sparse-switch
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    :try_start_3
    throw v4
    :try_end_3
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    move-object v0, v1

    :goto_1
    const/4 v3, 0x0

    return v3

    :catch_1
    move-exception v4

    goto :goto_0

    :cond_1
    return v3

    :catch_2
    move-exception v3

    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_4

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3
    :try_end_6
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    :catchall_1
    move-exception v3

    goto :goto_3

    :catchall_2
    move-exception v3

    move-object v0, v1

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v0, v1

    goto :goto_2
.end method

.method private static isSupportedSignatureAlgorithm(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x103 -> :sswitch_0
        0x104 -> :sswitch_0
        0x201 -> :sswitch_0
        0x202 -> :sswitch_0
        0x301 -> :sswitch_0
    .end sparse-switch
.end method

.method private static readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Negative length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method private static setUnsignedInt32LittleEndian(I[BI)V
    .locals 2

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 7

    const/4 v5, 0x0

    if-gez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-ge p2, p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "end < start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le p2, v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "end > capacity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v3

    :catchall_0
    move-exception v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4
.end method

.method private static verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v18, 0x0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get4(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v19

    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v18, v18, 0x1

    :try_start_2
    invoke-static/range {v19 .. v19}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v2, v11}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v14

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to parse/verify signer #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " block"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v15

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v3, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v13

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Failed to read list of signers"

    invoke-direct {v3, v4, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "No signers found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "No content digests found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get0(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get1(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get3(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v8

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get2(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/security/cert/X509Certificate;

    return-object v3
.end method

.method private static verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public static verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    return-object v2

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    if-eqz v3, :cond_4

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_3

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method private static verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/FileDescriptor;",
            "JJJ",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v7, "No digests provided"

    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    const-wide/16 v6, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    sub-long v10, p6, p4

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    invoke-direct/range {v6 .. v11}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p8

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p8

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/util/apk/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    new-instance v19, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;

    move-object/from16 v0, v19

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    const/16 v16, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v17, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    :try_start_0
    new-array v5, v5, [Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v7, 0x2

    aput-object v19, v5, v7

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    const/16 v21, 0x0

    :goto_1
    move-object/from16 v0, v17

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_3

    aget v14, v17, v21

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    aget-object v12, v13, v21

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " digest of contents did not verify"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v18

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Failed to compute digest(s) of contents"

    move-object/from16 v0, v18

    invoke-direct {v5, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v36

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v27

    const/16 v33, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v37

    if-eqz v37, :cond_3

    add-int/lit8 v33, v33, 0x1

    :try_start_0
    invoke-static/range {v34 .. v34}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "Signature record too short"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v17

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to parse signature record #"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    :cond_1
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v29 .. v29}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->isSupportedSignatureAlgorithm(I)Z

    move-result v37

    if-eqz v37, :cond_0

    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v3, v0, :cond_2

    move/from16 v0, v29

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareSignatureAlgorithm(II)I

    move-result v37

    if-lez v37, :cond_0

    :cond_2
    move/from16 v3, v29

    invoke-static/range {v31 .. v31}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    :cond_3
    const/16 v37, -0x1

    move/from16 v0, v37

    if-ne v3, v0, :cond_5

    if-nez v33, :cond_4

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "No signatures found"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_4
    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "No supported signatures found"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_5
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/security/spec/AlgorithmParameterSpec;

    :try_start_2
    invoke-static/range {v23 .. v23}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v37

    new-instance v38, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual/range {v37 .. v38}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v26

    invoke-static/range {v21 .. v21}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v22, :cond_6

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_6
    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/security/Signature;->verify([B)Z
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v30

    if-nez v30, :cond_7

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " signature did not verify"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :catch_1
    move-exception v18

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to verify "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " signature"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    :cond_7
    const/4 v11, 0x0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static/range {v36 .. v36}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v15

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :cond_8
    :goto_1
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v37

    if-eqz v37, :cond_a

    add-int/lit8 v14, v14, 0x1

    :try_start_3
    invoke-static {v15}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_9

    new-instance v37, Ljava/io/IOException;

    const-string/jumbo v38, "Record too short"

    invoke-direct/range {v37 .. v38}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v17

    new-instance v37, Ljava/io/IOException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to parse digest record #"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    :cond_9
    :try_start_4
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v29

    if-ne v0, v3, :cond_8

    invoke-static {v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v11

    goto :goto_1

    :cond_a
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_b

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_b
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [B

    if-eqz v25, :cond_c

    move-object/from16 v0, v25

    invoke-static {v0, v11}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v37

    xor-int/lit8 v37, v37, 0x1

    if-eqz v37, :cond_c

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_c
    invoke-static/range {v36 .. v36}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v37

    if-eqz v37, :cond_d

    add-int/lit8 v7, v7, 0x1

    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v20

    :try_start_5
    new-instance v37, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3

    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;

    move-object/from16 v0, v20

    invoke-direct {v6, v5, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_3
    move-exception v19

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to decode certificate #"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    :cond_d
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v37

    if-eqz v37, :cond_e

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "No certificates listed"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_e
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509Certificate;

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    move-object/from16 v0, v27

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v37

    if-nez v37, :cond_f

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "Public key mismatch between certificate and signature record"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v37

    move/from16 v0, v37

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Ljava/security/cert/X509Certificate;

    return-object v37
.end method
