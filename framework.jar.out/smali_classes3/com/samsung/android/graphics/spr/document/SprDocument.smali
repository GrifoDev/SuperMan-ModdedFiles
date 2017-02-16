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

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    .line 98
    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    .line 103
    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 104
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    .line 107
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    .line 108
    iput p4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    .line 109
    iput p5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    .line 111
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    .line 112
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    .line 114
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    .line 116
    iput v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    .line 117
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    .line 119
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-direct {v1, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iput-boolean v4, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 123
    iput v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    .line 124
    iput v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 90
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    .line 91
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 92
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 93
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 96
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    .line 98
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 129
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

    .line 131
    new-instance v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/samsung/android/graphics/spr/document/SprInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v10, "in":Lcom/samsung/android/graphics/spr/document/SprInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 138
    .local v16, "start":J
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v8

    .line 139
    .local v8, "fileTag":I
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readShort()S

    move-result v18

    move/from16 v0, v18

    iput-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    .line 140
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readShort()S

    move-result v18

    move/from16 v0, v18

    iput-short v0, v10, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    .line 141
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v13

    .line 142
    .local v13, "referenceSectionOffset":I
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v5

    .line 143
    .local v5, "documentOffset":I
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v7

    .line 144
    .local v7, "fileAttributeOffset":I
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    .line 145
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    .line 146
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    .line 147
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    .line 148
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    .line 149
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    .line 150
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    .line 151
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    .line 152
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    .line 153
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    .line 154
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    .line 155
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    .line 156
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    .line 157
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    .line 158
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    .line 160
    const/4 v6, 0x1

    .line 162
    .local v6, "documentSize":I
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

    .line 163
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v6

    .line 164
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    .line 165
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    .line 171
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

    .line 172
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    .line 173
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    .line 179
    :goto_1
    const v18, 0x53505200

    move/from16 v0, v18

    if-eq v8, v0, :cond_2

    const v18, 0x53564600

    move/from16 v0, v18

    if-eq v8, v0, :cond_2

    .line 180
    new-instance v18, Ljava/lang/RuntimeException;

    const-string/jumbo v19, "wrong file format"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 167
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    .line 168
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    goto :goto_0

    .line 175
    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    .line 176
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    goto :goto_1

    .line 184
    :cond_2
    if-eqz v7, :cond_4

    .line 186
    int-to-long v0, v7

    move-wide/from16 v18, v0

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    .line 188
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v11

    .local v11, "n":I
    :goto_2
    if-ge v9, v11, :cond_4

    .line 191
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v15

    .line 192
    .local v15, "type":B
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v14

    .line 194
    .local v14, "size":I
    packed-switch v15, :pswitch_data_0

    .line 200
    const/4 v4, 0x0

    .line 201
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
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

    .line 202
    int-to-long v0, v14

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    .line 206
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    :goto_3
    if-eqz v4, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 196
    :pswitch_0
    new-instance v4, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    invoke-direct {v4, v10}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 197
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    goto :goto_3

    .line 213
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .end local v9    # "i":I
    .end local v11    # "n":I
    .end local v14    # "size":I
    .end local v15    # "type":B
    :cond_4
    int-to-long v0, v13

    move-wide/from16 v18, v0

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    .line 215
    const/4 v9, 0x0

    .restart local v9    # "i":I
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v11

    .restart local v11    # "n":I
    :goto_4
    if-ge v9, v11, :cond_7

    .line 216
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    .line 219
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v15

    .line 221
    .restart local v15    # "type":B
    const/4 v14, 0x0

    .line 222
    .restart local v14    # "size":I
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

    .line 223
    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v14

    .line 225
    :cond_5
    sparse-switch v15, :sswitch_data_0

    .line 255
    const/4 v12, 0x0

    .line 256
    .local v12, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
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

    .line 257
    int-to-long v0, v14

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    .line 261
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :goto_5
    if-eqz v12, :cond_6

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 215
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 227
    :sswitch_0
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v12, v0, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 228
    .local v12, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_5

    .line 231
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_1
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 232
    .restart local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_5

    .line 235
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_2
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 236
    .restart local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_5

    .line 239
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_3
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 240
    .restart local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_5

    .line 243
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_4
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 244
    .restart local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_5

    .line 247
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_5
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 248
    .restart local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_5

    .line 251
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :sswitch_6
    new-instance v12, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;

    invoke-direct {v12, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 252
    .restart local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_5

    .line 267
    .end local v12    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .end local v14    # "size":I
    .end local v15    # "type":B
    :cond_7
    int-to-long v0, v5

    move-wide/from16 v18, v0

    invoke-virtual {v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    .line 269
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v6, :cond_8

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 273
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->applyTimeAnimationMode()V

    .line 278
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    .line 280
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 127
    return-void

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 225
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
    .param p1, "docName"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 90
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    .line 91
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 92
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 93
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 96
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    .line 98
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    .line 284
    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 285
    const-string/jumbo v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    .line 288
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "eventType":I
    const/4 v9, 0x2

    if-eq v1, v9, :cond_1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    .line 291
    :cond_1
    const/4 v9, 0x2

    if-eq v1, v9, :cond_2

    .line 292
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v10, "No start tag found"

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 295
    :cond_2
    const/4 v5, 0x0

    .local v5, "right":F
    const/4 v0, 0x0

    .line 296
    .local v0, "bottom":F
    const/4 v8, 0x0

    .line 298
    .local v8, "width":F
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 299
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v9, "width"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 303
    const-string/jumbo v9, "dp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 304
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

    .line 298
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_4
    const-string/jumbo v9, "height"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 308
    const-string/jumbo v9, "viewportHeight"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 309
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    .line 310
    :cond_5
    const-string/jumbo v9, "viewportWidth"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 311
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_1

    .line 312
    :cond_6
    const-string/jumbo v9, "autoMirrored"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 314
    const-string/jumbo v9, "tintMode"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 316
    const-string/jumbo v9, "tint"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 321
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    .line 322
    iput v5, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    .line 323
    iput v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    .line 324
    iget v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    div-float/2addr v9, v8

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    .line 326
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    .line 327
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    .line 329
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    .line 330
    const/4 v9, 0x2

    iput-byte v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    .line 332
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    .line 333
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    .line 335
    new-instance v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(Z)V

    .line 336
    .local v6, "root":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v10, 0x0

    invoke-direct {v9, v10, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v6, v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    .line 338
    iget-object v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 283
    return-void
.end method

.method private updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 10
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .prologue
    const/4 v9, 0x1

    .line 601
    iget-object v7, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "attr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 602
    .local v2, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v7, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v8, 0x61

    if-ne v7, v8, :cond_0

    .line 603
    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    .end local v2    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->getAnimators()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 604
    .local v0, "animator":Landroid/animation/Animator;
    check-cast v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    .end local v0    # "animator":Landroid/animation/Animator;
    iget-byte v7, v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mType:B

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 606
    :pswitch_0
    iput-boolean v9, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    goto :goto_0

    .line 609
    :pswitch_1
    iput-boolean v9, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    goto :goto_0

    .line 613
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    .end local v1    # "animator$iterator":Ljava/util/Iterator;
    :cond_2
    iget-byte v7, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    const/16 v8, 0x10

    if-ne v7, v8, :cond_3

    .line 618
    const/4 v5, 0x0

    .local v5, "i":I
    move-object v7, p1

    check-cast v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v6

    .local v6, "n":I
    :goto_1
    if-ge v5, v6, :cond_3

    move-object v7, p1

    .line 619
    check-cast v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v7, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v4

    .line 620
    .local v4, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-direct {p0, v4}, Lcom/samsung/android/graphics/spr/document/SprDocument;->updateAnimationObjectList(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    .line 618
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 600
    .end local v4    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_3
    return-void

    .line 604
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public appendAnimator(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 571
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method

.method public appendFileAttribute(Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;)V
    .locals 2
    .param p1, "attr"    # Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 525
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method public appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 542
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    .line 540
    return-void
.end method

.method public appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 534
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    .line 532
    return-void
.end method

.method public appendReference(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 476
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 474
    return-void
.end method

.method public applyTimeAnimationMode()V
    .locals 10

    .prologue
    .line 626
    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "object$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 627
    .local v4, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    iget-object v8, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "attr$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 628
    .local v1, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v8, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v9, 0x61

    if-ne v8, v9, :cond_1

    move-object v0, v1

    .line 629
    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    .line 630
    .local v0, "animatorSet":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    iget v3, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    .line 631
    .local v3, "duration":I
    const/4 v6, 0x1

    .line 632
    .local v6, "quotient":I
    const/4 v7, 0x1

    .line 634
    .local v7, "type":I
    iget v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    packed-switch v8, :pswitch_data_0

    .line 669
    :goto_1
    iget v8, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    invoke-static {v8, v3, v7, v6}, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->get(IIII)Landroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->updateAnimatorInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 636
    :pswitch_0
    const/4 v6, 0x1

    .line 637
    goto :goto_1

    .line 639
    :pswitch_1
    const/16 v6, 0x3e8

    .line 640
    goto :goto_1

    .line 642
    :pswitch_2
    const v6, 0xea60

    .line 643
    goto :goto_1

    .line 645
    :pswitch_3
    const v6, 0x36ee80

    .line 646
    goto :goto_1

    .line 648
    :pswitch_4
    const/4 v7, 0x2

    .line 649
    const/4 v6, 0x1

    .line 650
    goto :goto_1

    .line 652
    :pswitch_5
    const/4 v7, 0x2

    .line 653
    const/16 v6, 0x3e8

    .line 654
    goto :goto_1

    .line 656
    :pswitch_6
    const/4 v7, 0x2

    .line 657
    const v6, 0xea60

    .line 658
    goto :goto_1

    .line 660
    :pswitch_7
    const/4 v7, 0x2

    .line 661
    const v6, 0x36ee80

    .line 662
    goto :goto_1

    .line 664
    :pswitch_8
    const/4 v7, 0x2

    .line 665
    const v6, 0x5265c00

    .line 666
    goto :goto_1

    .line 625
    .end local v0    # "animatorSet":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    .end local v1    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .end local v2    # "attr$iterator":Ljava/util/Iterator;
    .end local v3    # "duration":I
    .end local v4    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .end local v6    # "quotient":I
    .end local v7    # "type":I
    :cond_2
    return-void

    .line 634
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

    .prologue
    .line 678
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 680
    .local v0, "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 682
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 683
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 685
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    .line 686
    .local v1, "group":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
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

    .line 690
    .end local v1    # "group":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    :cond_0
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 691
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    const/16 v4, 0x8

    if-gt v3, v4, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->applyTimeAnimationMode()V

    .line 695
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

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->clone()Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 346
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 351
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    .line 353
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 354
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    .line 356
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    .line 343
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;IIII)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "drawingGroupIdx"    # I
    .param p5, "dpi"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 719
    sget-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_0

    .line 720
    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawRect(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;II)V

    .line 725
    :cond_0
    int-to-float v0, p2

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    sub-float/2addr v1, v2

    div-float v6, v0, v1

    .line 726
    .local v6, "sx":F
    int-to-float v0, p3

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    iget v2, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    sub-float/2addr v1, v2

    div-float v7, v0, v1

    .line 728
    .local v7, "sy":F
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 729
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

    .line 731
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 733
    if-gez p4, :cond_2

    .line 734
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    .line 741
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 743
    sget-boolean v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v0, :cond_1

    .line 744
    invoke-static {p1, p0, p2, p3, p5}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawDebugInfo(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;III)V

    .line 718
    :cond_1
    return-void

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p4, v0, :cond_3

    .line 736
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

    .line 738
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

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->close()V

    .line 363
    return-void
.end method

.method public getFileAttribute(I)Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 517
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x0

    return-object v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    return-object v0
.end method

.method public getFileAttributeSize()I
    .locals 2

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 509
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    return v0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFrameAnimationCount()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLoadingTime()I
    .locals 2

    .prologue
    .line 699
    iget-wide v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLoadingTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 500
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x0

    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getReferenceSize()I
    .locals 2

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 492
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getTotalAttributeCount()I
    .locals 2

    .prologue
    .line 711
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

    .prologue
    .line 707
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

    .prologue
    .line 703
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

    .prologue
    .line 586
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isIntrinsic()Z
    .locals 1

    .prologue
    .line 715
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

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 597
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

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    return v0
.end method

.method public preDraw(I)V
    .locals 7
    .param p1, "drawingGroupIdx"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 749
    new-instance v2, Landroid/graphics/Paint;

    sget-object v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 750
    .local v2, "strokePaint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Paint;

    sget-object v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBasePaint:Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 752
    .local v3, "fillPaint":Landroid/graphics/Paint;
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 753
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 754
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 756
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 757
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 759
    if-gtz p1, :cond_0

    .line 760
    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw:Z

    .line 763
    :cond_0
    if-gez p1, :cond_1

    .line 764
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getObject()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    .line 748
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    goto :goto_0

    .line 768
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
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 579
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v0, 0x0

    return v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 558
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v0, 0x0

    return-object v0

    .line 561
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
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .prologue
    const/4 v2, 0x0

    .line 549
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 550
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return v2

    .line 553
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
    .param p1, "id"    # I
    .param p2, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 484
    const-string/jumbo v0, "SPRDocument"

    const-string/jumbo v1, "Already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 482
    return-void
.end method

.method public toSPR(Ljava/io/OutputStream;)Z
    .locals 22
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    new-instance v18, Ljava/io/DataOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 370
    .local v18, "out":Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    .line 371
    .local v14, "ninePatchLeft":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    move/from16 v16, v0

    .line 372
    .local v16, "ninePatchTop":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    .line 373
    .local v15, "ninePatchRight":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    .line 375
    .local v13, "ninePatchBottom":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mIsInitialized:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 376
    const-string/jumbo v19, "SPRDocument"

    const-string/jumbo v20, "Already closed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v19, 0x0

    return v19

    .line 380
    :cond_0
    const/4 v7, 0x0

    .line 381
    .local v7, "fileAttributeSize":I
    const/4 v6, 0x0

    .line 382
    .local v6, "fileAttributeCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_4

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "attribute$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    .line 384
    .local v2, "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 385
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v19

    add-int/lit8 v19, v19, 0x5

    add-int v7, v7, v19

    .line 386
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 388
    :cond_2
    iget-byte v0, v2, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mType:B

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v12, v2

    .line 390
    check-cast v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    .line 391
    .local v12, "ninePatch":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;
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

    .line 392
    iget-object v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v14, v19, v20

    .line 393
    iget-object v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v16, v19, v20

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    move/from16 v19, v0

    iget-object v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v15, v19, v20

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    move/from16 v19, v0

    iget-object v0, v12, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v13, v19, v20

    goto :goto_0

    .line 406
    .end local v2    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .end local v12    # "ninePatch":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;
    :cond_3
    if-nez v7, :cond_5

    const/16 v19, 0x0

    :goto_1
    add-int v7, v7, v19

    .line 409
    .end local v3    # "attribute$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v8, 0x4

    .line 410
    .local v8, "filterSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v11

    .local v11, "n":I
    :goto_2
    if-ge v9, v11, :cond_6

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 412
    .local v17, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v19

    add-int v8, v8, v19

    .line 410
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 406
    .end local v8    # "filterSize":I
    .end local v9    # "i":I
    .end local v11    # "n":I
    .end local v17    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .restart local v3    # "attribute$iterator":Ljava/util/Iterator;
    :cond_5
    const/16 v19, 0x4

    goto :goto_1

    .line 415
    .end local v3    # "attribute$iterator":Ljava/util/Iterator;
    .restart local v8    # "filterSize":I
    .restart local v9    # "i":I
    .restart local v11    # "n":I
    :cond_6
    const v19, 0x53505200

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 416
    const/16 v19, 0x3030

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 417
    const/16 v19, 0x3034

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 418
    add-int/lit8 v19, v7, 0x61

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 419
    add-int/lit8 v19, v7, 0x61

    add-int v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 420
    if-nez v7, :cond_8

    const/16 v19, 0x0

    :goto_3
    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 421
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 422
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 427
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 428
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 429
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 430
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 433
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 434
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatCount:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 438
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRepeatMode:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 439
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 443
    if-eqz v7, :cond_9

    .line 444
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mFileAttributes:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "attribute$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    .line 447
    .restart local v2    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->isValid()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 448
    iget-byte v0, v2, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mType:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 449
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->getSPRSize()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 450
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_4

    .line 420
    .end local v2    # "attribute":Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .end local v3    # "attribute$iterator":Ljava/util/Iterator;
    :cond_8
    const/16 v19, 0x61

    goto/16 :goto_3

    .line 456
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 457
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v11

    :goto_5
    if-ge v9, v11, :cond_a

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 459
    .local v10, "key":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mReferenceMap:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 460
    .restart local v17    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 461
    move-object/from16 v0, v17

    iget-byte v0, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 462
    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 457
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 466
    .end local v10    # "key":I
    .end local v17    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDocuments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "document$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    .line 467
    .local v4, "document":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_6

    .line 470
    .end local v4    # "document":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    :cond_b
    const/16 v19, 0x1

    return v19

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
