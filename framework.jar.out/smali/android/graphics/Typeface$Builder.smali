.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final BOLD_WEIGHT:I = 0x2bc

.field public static final NORMAL_WEIGHT:I = 0x190

.field private static final sLock:Ljava/lang/Object;

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mFallbackFamilyName:Ljava/lang/String;

.field private mFd:Ljava/io/FileDescriptor;

.field private mFontBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mFonts:[Landroid/provider/FontsContract$FontInfo;

.field private mItalic:I

.field private mPath:Ljava/lang/String;

.field private mTtcIndex:I

.field private mWeight:I


# direct methods
.method static synthetic -wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;
    .locals 1

    invoke-static/range {p0 .. p5}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/provider/FontsContract$FontInfo;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    return-void
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const/4 v5, 0x0

    array-length v6, p3

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v0, p3, v5

    invoke-virtual {v0}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private resolveFallbackTypeface()Landroid/graphics/Typeface;
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v8, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v8, :cond_0

    return-object v9

    :cond_0
    sget-object v8, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    iget-object v9, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    :cond_1
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v8, v10, :cond_2

    iget v8, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v8, v10, :cond_2

    return-object v0

    :cond_2
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v8, v10, :cond_3

    invoke-static {v0}, Landroid/graphics/Typeface;->-get1(Landroid/graphics/Typeface;)I

    move-result v5

    :goto_0
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v8, v10, :cond_5

    invoke-static {v0}, Landroid/graphics/Typeface;->-get0(Landroid/graphics/Typeface;)I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    :goto_1
    const/4 v2, 0x1

    :goto_2
    shl-int/lit8 v8, v5, 0x1

    if-eqz v2, :cond_6

    :goto_3
    or-int v3, v8, v6

    sget-object v7, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v6, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v8, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    monitor-exit v7

    return-object v4

    :cond_3
    iget v5, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v8, v6, :cond_4

    goto :goto_1

    :cond_6
    move v6, v7

    goto :goto_3

    :cond_7
    :try_start_1
    new-instance v4, Landroid/graphics/Typeface;

    iget-wide v8, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v5, v2}, Landroid/graphics/Typeface;->-wrap1(JIZ)J

    move-result-wide v8

    const/4 v6, 0x0

    invoke-direct {v4, v8, v9, v6}, Landroid/graphics/Typeface;-><init>(JLandroid/graphics/Typeface;)V

    if-nez v1, :cond_8

    new-instance v1, Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-direct {v1, v6}, Landroid/util/SparseArray;-><init>(I)V

    sget-object v6, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v8, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v6, v8, v9, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_8
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-object v4

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method public build()Landroid/graphics/Typeface;
    .locals 29

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_b

    const/4 v14, 0x0

    const/16 v22, 0x0

    :try_start_0
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v3

    if-eqz v23, :cond_0

    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v14, :cond_1

    :try_start_3
    throw v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v20

    move-object/from16 v22, v23

    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :catch_1
    move-exception v14

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    :try_start_4
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v3

    if-eqz v23, :cond_3

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_2
    if-eqz v14, :cond_4

    :try_start_6
    throw v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v14

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    const/4 v3, 0x1

    :try_start_7
    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v3

    if-eqz v23, :cond_6

    :try_start_8
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_6
    :goto_3
    if-eqz v14, :cond_7

    :try_start_9
    throw v14
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_3
    move-exception v14

    goto :goto_3

    :cond_7
    return-object v3

    :catch_4
    move-exception v3

    :goto_4
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v28, v4

    move-object v4, v3

    move-object/from16 v3, v28

    :goto_5
    if-eqz v22, :cond_8

    :try_start_b
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_8
    :goto_6
    if-eqz v4, :cond_a

    :try_start_c
    throw v4

    :catch_5
    move-exception v20

    goto :goto_1

    :catch_6
    move-exception v5

    if-nez v4, :cond_9

    move-object v4, v5

    goto :goto_6

    :cond_9
    if-eq v4, v5, :cond_8

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    throw v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static/range {v10 .. v15}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v25

    sget-object v4, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    invoke-static {}, Landroid/graphics/Typeface;->-get2()Landroid/util/LruCache;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Typeface;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v27, :cond_c

    monitor-exit v4

    return-object v27

    :cond_c
    :try_start_e
    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v18, v0

    const/4 v14, 0x1

    move-object v10, v8

    invoke-virtual/range {v10 .. v18}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v3

    monitor-exit v4

    return-object v3

    :cond_d
    :try_start_f
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v3

    monitor-exit v4

    return-object v3

    :cond_e
    const/4 v3, 0x1

    :try_start_10
    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v27

    invoke-static {}, Landroid/graphics/Typeface;->-get2()Landroid/util/LruCache;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    monitor-exit v4

    return-object v27

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_12

    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object v10, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_10
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_11
    const/4 v3, 0x1

    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v3, :cond_18

    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_7
    if-ge v3, v5, :cond_16

    aget-object v24, v4, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    if-nez v11, :cond_13

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getTtcIndex()I

    move-result v12

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v13

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getWeight()I

    move-result v14

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->isItalic()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v15, 0x1

    :goto_9
    move-object v10, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v26

    if-nez v26, :cond_15

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    const/4 v3, 0x0

    return-object v3

    :cond_14
    const/4 v15, 0x0

    goto :goto_9

    :cond_15
    const/16 v19, 0x1

    goto :goto_8

    :cond_16
    if-nez v19, :cond_17

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    const/4 v3, 0x0

    return-object v3

    :cond_17
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    const/4 v3, 0x1

    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "No source was set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_2
    move-exception v3

    move-object v4, v14

    goto/16 :goto_5

    :catchall_3
    move-exception v3

    move-object/from16 v22, v23

    move-object v4, v14

    goto/16 :goto_5

    :catch_7
    move-exception v3

    move-object/from16 v22, v23

    goto/16 :goto_4
.end method

.method public setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 0

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    return-object p0
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 2

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .locals 2

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0
.end method

.method public setItalic(Z)Landroid/graphics/Typeface$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .locals 2

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TTC index can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    return-object p0
.end method

.method public setWeight(I)Landroid/graphics/Typeface$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    return-object p0
.end method
