.class public Lcom/samsung/android/graphics/spr/document/SprDocument;
.super Ljava/lang/Object;
.source "SprDocument.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANIMATION_MODE_BATTERY:I = 0xa

.field public static final ANIMATION_MODE_NONE:I = 0x0

.field public static final ANIMATION_MODE_STORAGE_SPACE:I = 0xb

.field public static final ANIMATION_MODE_TIME_DAY_IN_WEEK:I = 0x9

.field public static final ANIMATION_MODE_TIME_HOUR_IN_DAY:I = 0x4

.field public static final ANIMATION_MODE_TIME_HOUR_IN_WEEK:I = 0x8

.field public static final ANIMATION_MODE_TIME_MILLISECOND_IN_DAY:I = 0x1

.field public static final ANIMATION_MODE_TIME_MILLISECOND_IN_WEEK:I = 0x5

.field public static final ANIMATION_MODE_TIME_MINUTE_IN_DAY:I = 0x3

.field public static final ANIMATION_MODE_TIME_MINUTE_IN_WEEK:I = 0x7

.field public static final ANIMATION_MODE_TIME_SECOND_IN_DAY:I = 0x2

.field public static final ANIMATION_MODE_TIME_SECOND_IN_WEEK:I = 0x6

.field public static final DEFAULT_DENSITY_SCALE:F = 2.0f

.field public static final HEADER_SIZE:I = 0x61

.field public static final MAJOR_VERSION:S = 0x3030s

.field public static final MINOR_VERSION:S = 0x3034s

.field public static final REPEAT_MODE_RESTART:B = 0x2t

.field public static final REPEAT_MODE_REVERSE:B = 0x1t

.field public static final RESERVED_SIZE:I = 0x0

.field public static final SPRTAG:I = 0x53505200

.field public static final SVFTAG:I = 0x53564600

.field private static final TAG:Ljava/lang/String; = "SPRDocument"

.field private static mBasePaint:Landroid/graphics/Paint;


# instance fields
.field private isPredraw:Z

.field public final mAnimationInterval:I

.field public final mAnimationMode:I

.field private mAnimationObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mBottom:F

.field public final mDensity:F

.field private mDocuments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mFileAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

.field private mIsInitialized:Z

.field public final mLeft:F

.field private mLoadingTime:J

.field public final mName:Ljava/lang/String;

.field public final mNinePatchBottom:F

.field public final mNinePatchLeft:F

.field public final mNinePatchRight:F

.field public final mNinePatchTop:F

.field public final mPaddingBottom:F

.field public final mPaddingLeft:F

.field public final mPaddingRight:F

.field public final mPaddingTop:F

.field private mReferenceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mRepeatCount:I

.field public final mRepeatMode:B

.field public final mRight:F

.field public final mTop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    iput p3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    iput p4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iput p5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    iput v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-direct {v1, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    iput v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    iput v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const-string/jumbo v18, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    new-instance v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/samsung/android/graphics/spr/document/SprInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v8

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readShort()S

    move-result v18

    move/from16 v0, v18

    iput-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readShort()S

    move-result v18

    move/from16 v0, v18

    iput-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v13

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v5

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v7

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    const/4 v6, 0x1

    iget-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    move/from16 v18, v0

    const/16 v19, 0x3030

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    iget-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    move/from16 v18, v0

    const/16 v19, 0x3033

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v6

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    :goto_0
    iget-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    move/from16 v18, v0

    const/16 v19, 0x3030

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    iget-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    move/from16 v18, v0

    const/16 v19, 0x3034

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    :goto_1
    const v18, 0x53505200

    move/from16 v0, v18

    if-eq v8, v0, :cond_2

    const v18, 0x53564600

    move/from16 v0, v18

    if-eq v8, v0, :cond_2

    new-instance v18, Ljava/lang/RuntimeException;

    const-string/jumbo v19, "wrong file format"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    goto :goto_0

    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_4

    int-to-long v0, v7

    move-wide/from16 v18, v0

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    const/4 v9, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v11

    :goto_2
    if-ge v9, v11, :cond_4

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v15

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v14

    packed-switch v15, :pswitch_data_0

    const/4 v4, 0x0

    const-string/jumbo v18, "SPRDocument"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unknown element type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v0, v14

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    :goto_3
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :pswitch_0
    new-instance v4, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    invoke-direct {v4, v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    goto :goto_3

    :cond_4
    int-to-long v0, v13

    move-wide/from16 v18, v0

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    const/4 v9, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v11

    :goto_4
    if-ge v9, v11, :cond_7

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v15

    const/4 v14, 0x0

    iget-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    move/from16 v18, v0

    const/16 v19, 0x3030

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    iget-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    move/from16 v18, v0

    const/16 v19, 0x3032

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v14

    :cond_5
    sparse-switch v15, :sswitch_data_0

    const/4 v12, 0x0

    const-string/jumbo v18, "SPRDocument"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unknown element type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v0, v14

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    :goto_5
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :sswitch_0
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v12, v0, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    goto :goto_5

    :sswitch_1
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    goto :goto_5

    :sswitch_2
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    goto :goto_5

    :sswitch_3
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    goto :goto_5

    :sswitch_4
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    goto :goto_5

    :sswitch_5
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    goto :goto_5

    :sswitch_6
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    goto :goto_5

    :cond_7
    int-to-long v0, v5

    move-wide/from16 v18, v0

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->applyTimeAnimationMode()V

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x10 -> :sswitch_0
        0x11 -> :sswitch_6
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const-string/jumbo v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v9, 0x2

    if-eq v1, v9, :cond_1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    :cond_1
    const/4 v9, 0x2

    if-eq v1, v9, :cond_2

    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v10, "No start tag found"

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_7

    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "width"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "dp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v9, "height"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "viewportHeight"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_5
    const-string/jumbo v9, "viewportWidth"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_1

    :cond_6
    const-string/jumbo v9, "autoMirrored"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "tintMode"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "tint"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    iput v5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    iget v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    div-float/2addr v9, v8

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    const/4 v9, 0x2

    iput-byte v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    new-instance v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(Z)V

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v10, 0x0

    invoke-direct {v9, v10, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    iget-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    return-void
.end method

.method private updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 10

    const/4 v9, 0x1

    iget-object v7, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v7, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v8, 0x61

    if-ne v7, v8, :cond_0

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->getAnimators()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    iget-byte v7, v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mType:B

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v9, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v9, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-byte v7, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    const/16 v8, 0x10

    if-ne v7, v8, :cond_3

    const/4 v5, 0x0

    move-object v7, p1

    check-cast v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_3

    move-object v7, p1

    check-cast v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v7, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/graphics/spr/document/SprDocument;->updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public appendAnimator(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendFileAttribute(Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    return-void
.end method

.method public appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    return-void
.end method

.method public appendReference(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public applyTimeAnimationMode()V
    .locals 10

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-object v8, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v8, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v9, 0x61

    if-ne v8, v9, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    iget v3, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    iget v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    packed-switch v8, :pswitch_data_0

    :goto_1
    iget v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    invoke-static {v8, v3, v7, v6}, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->get(IIII)Landroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->updateAnimatorInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :pswitch_0
    const/4 v6, 0x1

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x3e8

    goto :goto_1

    :pswitch_2
    const v6, 0xea60

    goto :goto_1

    :pswitch_3
    const v6, 0x36ee80

    goto :goto_1

    :pswitch_4
    const/4 v7, 0x2

    const/4 v6, 0x1

    goto :goto_1

    :pswitch_5
    const/4 v7, 0x2

    const/16 v6, 0x3e8

    goto :goto_1

    :pswitch_6
    const/4 v7, 0x2

    const v6, 0xea60

    goto :goto_1

    :pswitch_7
    const/4 v7, 0x2

    const v6, 0x36ee80

    goto :goto_1

    :pswitch_8
    const/4 v7, 0x2

    const v6, 0x5265c00

    goto :goto_1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/SprDocument;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-direct {v0, v3}, Lcom/samsung/android/graphics/spr/document/SprDocument;->updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    iget v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    const/16 v4, 0x8

    if-gt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->applyTimeAnimationMode()V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->clone()Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;IIII)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    sget-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawRect(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;II)V

    :cond_0
    int-to-float v0, p2

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    sub-float/2addr v1, v2

    div-float v6, v0, v1

    int-to-float v0, p3

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    sub-float/2addr v1, v2

    div-float v7, v0, v1

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    int-to-float v3, p2

    add-float/2addr v3, v0

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    int-to-float v4, p3

    add-float/2addr v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    if-gez p4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p0, p2, p3, p5}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawDebugInfo(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;III)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->close()V

    return-void
.end method

.method public getFileAttribute(I)Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    return-object v0
.end method

.method public getFileAttributeSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFrameAnimationCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLoadingTime()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getReferenceSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getTotalAttributeCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getTotalAttributeCount()I

    move-result v0

    return v0
.end method

.method public getTotalElementCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getTotalElementCount()I

    move-result v0

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getTotalSegmentCount()I

    move-result v0

    return v0
.end method

.method public getValueAnimationObjects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isIntrinsic()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNinePatch()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPredraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    return v0
.end method

.method public preDraw(I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/Paint;

    sget-object v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/Paint;

    sget-object v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    :goto_0
    if-gtz p1, :cond_0

    iput-boolean v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    goto :goto_0
.end method

.method public removeAnimator(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z

    move-result v0

    return v0
.end method

.method public removeReference(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public toSPR(Ljava/io/OutputStream;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v18, Ljava/io/DataOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    const-string/jumbo v19, "SPRDocument"

    const-string/jumbo v20, "Already closed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :cond_0
    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v19

    add-int/lit8 v19, v19, 0x5

    add-int v7, v7, v19

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-byte v0, v2, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mType:B

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v12, v2

    check-cast v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    iget v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    iget v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    iget-object v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v14, v19, v20

    iget-object v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v16, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    move/from16 v19, v0

    iget-object v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v15, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    move/from16 v19, v0

    iget-object v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v13, v19, v20

    goto :goto_0

    :cond_3
    if-nez v7, :cond_5

    const/16 v19, 0x0

    :goto_1
    add-int v7, v7, v19

    :cond_4
    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v11

    :goto_2
    if-ge v9, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v19

    add-int v8, v8, v19

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    const/16 v19, 0x4

    goto :goto_1

    :cond_6
    const v19, 0x53505200

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v19, 0x3030

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v19, 0x3034

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v19, v7, 0x61

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v19, v7, 0x61

    add-int v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-nez v7, :cond_8

    const/16 v19, 0x0

    :goto_3
    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v7, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v19

    if-eqz v19, :cond_7

    iget-byte v0, v2, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mType:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_4

    :cond_8
    const/16 v19, 0x61

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v11

    :goto_5
    if-ge v9, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, v17

    iget-byte v0, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_6

    :cond_b
    const/16 v19, 0x1

    return v19

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
