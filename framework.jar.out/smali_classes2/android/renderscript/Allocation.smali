.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$MipmapControl;,
        Landroid/renderscript/Allocation$OnBufferAvailableListener;
    }
.end annotation


# static fields
.field private static final synthetic -android-graphics-Bitmap$ConfigSwitchesValues:[I = null

.field private static final MAX_NUMBER_IO_INPUT_ALLOC:I = 0x10

.field public static final USAGE_GRAPHICS_CONSTANTS:I = 0x8

.field public static final USAGE_GRAPHICS_RENDER_TARGET:I = 0x10

.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_GRAPHICS_VERTEX:I = 0x4

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mAllocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/renderscript/Allocation;

.field mAutoPadding:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mByteBufferStride:J

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field private mGetSurfaceSurface:Landroid/view/Surface;

.field mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

.field mOwningType:Z

.field mReadAllowed:Z

.field mSelectedArray:[I

.field mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedX:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mTimeStamp:J

.field mType:Landroid/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method private static synthetic -getandroid-graphics-Bitmap$ConfigSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/renderscript/Allocation;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/renderscript/Allocation;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/renderscript/Allocation;->-android-graphics-Bitmap$ConfigSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    .locals 7

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    iput-wide v4, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mReadAllowed:Z

    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    iput-object v1, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iput-object v3, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    iput-object v3, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    iput-wide v4, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    and-int/lit16 v1, p5, -0x100

    if-eqz v1, :cond_0

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Unknown usage specified."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    and-int/lit8 v1, p5, 0x20

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    and-int/lit8 v1, p5, -0x24

    if-eqz v1, :cond_1

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Invalid usage combination."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iput p5, p0, Landroid/renderscript/Allocation;->mUsage:I

    if-eqz p4, :cond_2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-direct {p0, p4}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    :cond_2
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/renderscript/Allocation;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "destroy"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    .locals 7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    iput-boolean p5, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    iput-object p7, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    return-void
.end method

.method private copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 20

    :try_start_0
    const-string/jumbo v2, "copy1DRangeFromUnchecked"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int v6, v2, p2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v7, 0x1

    :cond_0
    move-object/from16 v0, p4

    iget v2, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, p5, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v13, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v2, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v18, v0

    move/from16 v12, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, v6

    move-object/from16 v17, p4

    move/from16 v19, v7

    invoke-virtual/range {v9 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v2

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 20

    :try_start_0
    const-string/jumbo v2, "copy1DRangeToUnchecked"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int v6, v2, p2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v7, 0x1

    :cond_0
    move-object/from16 v0, p4

    iget v2, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, p5, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v13, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v2, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v18, v0

    move/from16 v12, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, v6

    move-object/from16 v17, p4

    move/from16 v19, v7

    invoke-virtual/range {v9 .. v19}, Landroid/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v2

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 18

    :try_start_0
    const-string/jumbo v3, "copy3DRangeFromUnchecked"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p4

    mul-int v3, v3, p5

    mul-int v2, v3, p6

    const/16 v17, 0x0

    move-object/from16 v0, p8

    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v14, p9, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v14, :cond_0

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_0
    const/16 v17, 0x1

    move v14, v2

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v16, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    if-le v2, v14, :cond_1

    :try_start_2
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 18

    :try_start_0
    const-string/jumbo v3, "copy3DRangeToUnchecked"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p4

    mul-int v3, v3, p5

    mul-int v2, v3, p6

    const/16 v17, 0x0

    move-object/from16 v0, p8

    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v14, p9, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v14, :cond_0

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_0
    const/16 v17, 0x1

    move v14, v2

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v16, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    if-le v2, v14, :cond_1

    :try_start_2
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 12

    const-wide/32 v10, 0x8000

    :try_start_0
    const-string/jumbo v0, "copyFromUnchecked"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    :try_start_2
    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 10

    const-wide/32 v8, 0x8000

    :try_start_0
    const-string/jumbo v0, "copyTo"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v7, 0x0

    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-eqz v7, :cond_1

    iget v0, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p3

    iget v1, p0, Landroid/renderscript/Allocation;->mSize:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_2

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Size of output array cannot be smaller than size of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    :try_start_1
    iget v0, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p3

    iget v1, p0, Landroid/renderscript/Allocation;->mSize:I

    if-ge v0, v1, :cond_2

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Size of output array cannot be smaller than size of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v6, v0, Landroid/renderscript/Element$DataType;->mSize:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public static createAllocations(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;II)[Landroid/renderscript/Allocation;
    .locals 8

    const-wide/32 v6, 0x8000

    :try_start_0
    const-string/jumbo v2, "createAllocations"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v3, "Bad Type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_0
    :try_start_1
    new-array v1, p3, [Landroid/renderscript/Allocation;

    invoke-static {p0, p1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    if-le p3, v2, :cond_1

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Exceeds the max number of Allocations allowed: 16"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p3}, Landroid/renderscript/Allocation;->setupBufferQueue(I)V

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_3

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p0, v2}, Landroid/renderscript/Allocation;->createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    rem-int/lit8 v3, v15, 0x6

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v6, "Cubemap height must be multiple of 6"

    invoke-direct {v3, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    div-int/lit8 v3, v15, 0x6

    if-eq v3, v11, :cond_1

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v6, "Only square cube map faces supported"

    invoke-direct {v3, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    add-int/lit8 v3, v11, -0x1

    and-int/2addr v3, v11

    if-nez v3, :cond_2

    const/4 v12, 0x1

    :goto_0
    if-nez v12, :cond_3

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v6, "Only power of 2 cube faces supported"

    invoke-direct {v3, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    invoke-static/range {p0 .. p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v2

    new-instance v14, Landroid/renderscript/Type$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v14, v11}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v14, v11}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v14, v3}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    invoke-virtual {v14}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move-object/from16 v0, p2

    iget v6, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Load failed for bitmap "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    new-instance v3, Landroid/renderscript/Allocation;

    const/4 v8, 0x1

    move-object/from16 v6, p0

    move-object v7, v13

    move/from16 v9, p3

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    return-object v3
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 9

    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-eq v9, v5, :cond_1

    :cond_0
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v10, "Only square cube map faces supported"

    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    add-int/lit8 v9, v5, -0x1

    and-int/2addr v9, v5

    if-nez v9, :cond_2

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_3

    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v10, "Only power of 2 cube faces supported"

    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v4

    new-instance v8, Landroid/renderscript/Type$Builder;

    invoke-direct {v8, p0, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p7

    if-ne v0, v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-static {p0, v7, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    move-result-object v2

    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    invoke-virtual {v2, p1}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    invoke-virtual {v2, p2}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    invoke-virtual {v2, p3}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    invoke-virtual {v2, p4}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    return-object v3

    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method static createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 17

    :try_start_0
    const-string/jumbo v2, "createFromAllcation"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v3, "Bad input Allocation"

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getMipmap()Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move-object/from16 v0, v16

    iget v6, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v10

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v3, "Allocation creation failed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v9, Landroid/renderscript/Allocation;

    const/4 v14, 0x0

    move-object/from16 v12, p0

    move v15, v7

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    and-int/lit8 v2, v7, 0x20

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/renderscript/Allocation;->shareBufferQueue(Landroid/renderscript/Allocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v9
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 19

    :try_start_0
    const-string/jumbo v8, "createFromBitmap"

    const-wide/32 v10, 0x8000

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    if-nez v8, :cond_1

    move/from16 v0, p3

    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_0

    new-instance v8, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v9, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v8, v9}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v8

    const-wide/32 v10, 0x8000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v8

    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    const-wide/32 v10, 0x8000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v8

    :cond_1
    :try_start_2
    invoke-static/range {p0 .. p2}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    move-result-object v18

    sget-object v8, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p2

    if-ne v0, v8, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x83

    move/from16 v0, p3

    if-ne v0, v8, :cond_3

    invoke-virtual/range {v18 .. v19}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    move-object/from16 v0, p2

    iget v8, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v9, "Load failed."

    invoke-direct {v8, v9}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    new-instance v5, Landroid/renderscript/Allocation;

    const/4 v10, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, v18

    move/from16 v11, p3

    move-object/from16 v12, p2

    invoke-direct/range {v5 .. v12}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v8, 0x8000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v5

    :cond_3
    :try_start_3
    invoke-virtual/range {v18 .. v19}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v10

    move-object/from16 v0, p2

    iget v12, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    invoke-virtual/range {v9 .. v14}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_4

    new-instance v8, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v9, "Load failed."

    invoke-direct {v8, v9}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    new-instance v9, Landroid/renderscript/Allocation;

    const/4 v14, 0x1

    move-wide v10, v6

    move-object/from16 v12, p0

    move-object/from16 v13, v18

    move/from16 v15, p3

    move-object/from16 v16, p2

    invoke-direct/range {v9 .. v16}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/32 v10, 0x8000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v9
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 4

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    and-int/lit16 v2, p4, 0xe0

    if-eqz v2, :cond_0

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Unsupported usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0, v1, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .locals 5

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    array-length v4, v1

    invoke-static {p0, v3, v4, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v4, "Could not convert string to utf-8."

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .locals 10

    :try_start_0
    const-string/jumbo v1, "createSized"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget v4, v1, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v4, "Allocation creation failed."

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Landroid/renderscript/Allocation;

    sget-object v8, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x1

    move-object v4, p0

    move-object v5, v9

    move v7, p3

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .locals 2

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;
    .locals 1

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 12

    const-wide/32 v10, 0x8000

    const-wide/16 v8, 0x0

    :try_start_0
    const-string/jumbo v0, "createTyped"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Bad Type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_1

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Landroid/renderscript/Allocation;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1
.end method

.method private data1DChecks(IIIIZ)V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    if-gez p1, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Count must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p1, p2

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-le v0, v1, :cond_2

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Overflow, Available count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p5, :cond_3

    div-int/lit8 v0, p4, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-ge p3, v0, :cond_4

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ge p3, p4, :cond_4

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad bitmap type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getIDSafe()J
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0
.end method

.method static sendBufferNotification(J)V
    .locals 4

    sget-object v2, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    invoke-interface {v1, v0}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .locals 3

    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCacheInfo(Landroid/renderscript/Type;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v2, :cond_0

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v2, :cond_1

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    if-gez p2, :cond_3

    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p4, :cond_4

    if-gez p3, :cond_5

    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int v0, p1, p3

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v1, :cond_0

    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate3DRange(IIIIII)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    if-gez p2, :cond_3

    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p3, :cond_2

    if-ltz p5, :cond_4

    if-gez p4, :cond_5

    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-ltz p6, :cond_4

    add-int v0, p1, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p5

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v1, :cond_7

    :cond_6
    :goto_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int v0, p3, p6

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v1, :cond_0

    goto :goto_0
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Bitmap has an unsupported format for this operation"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/renderscript/Allocation;->-getandroid-graphics-Bitmap$ConfigSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_1
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq v1, v2, :cond_1

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private validateIsFloat32()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "32 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsFloat64()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "64 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt16OrFloat16()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "16 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt32()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "32 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt64()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "64 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt8()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "8 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsObject()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Object source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Object passed is not an array of primitives."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Object passed is not an Array of primitives."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    if-eqz p2, :cond_2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt64()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_2
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    if-eqz p2, :cond_4

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_4
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    if-eqz p2, :cond_6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_6
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_7
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_9

    if-eqz p2, :cond_8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_8
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_9
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_b

    if-eqz p2, :cond_a

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    :cond_a
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_b
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_d

    if-eqz p2, :cond_c

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat64()V

    :cond_c
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    return-object v2

    :cond_d
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parameter of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "[] is not compatible with data type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v4, v4, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v4}, Landroid/renderscript/Element$DataType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " of allocation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    .locals 18

    const-string/jumbo v2, "copy1DRangeFrom"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v0, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move/from16 v17, v0

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x0

    move/from16 v6, p1

    move/from16 v10, p2

    move/from16 v14, p4

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(IILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[B)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[F)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[I)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[S)V
    .locals 6

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[B)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[F)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[I)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[S)V
    .locals 6

    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    .locals 18

    :try_start_0
    const-string/jumbo v2, "copy2DRangeFrom"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v0, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move/from16 v17, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v2

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copy2DRangeFrom(IIIILjava/lang/Object;)V
    .locals 10

    const-wide/32 v8, 0x8000

    :try_start_0
    const-string/jumbo v0, "copy2DRangeFrom"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 12

    const-wide/32 v10, 0x8000

    :try_start_0
    const-string/jumbo v1, "copy2DRangeFrom"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1, p2, v9}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v4, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v7, v4, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v4, p1

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 17

    :try_start_0
    const-string/jumbo v3, "copy2DRangeFromUnchecked"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p3

    mul-int v2, v3, p4

    const/16 v16, 0x0

    move-object/from16 v0, p6

    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v13, p7, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v13, :cond_0

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_0
    const/16 v16, 0x1

    move v13, v2

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v6, Landroid/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v15, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v16}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    if-le v2, v13, :cond_1

    :try_start_2
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public copy2DRangeTo(IIIILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[B)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[F)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[I)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[S)V
    .locals 8

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 17

    :try_start_0
    const-string/jumbo v3, "copy2DRangeToUnchecked"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p3

    mul-int v2, v3, p4

    const/16 v16, 0x0

    move-object/from16 v0, p6

    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v13, p7, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v13, :cond_0

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_0
    const/16 v16, 0x1

    move v13, v2

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v6, Landroid/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v15, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v16}, Landroid/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    if-le v2, v13, :cond_1

    :try_start_2
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public copy3DRangeFrom(IIIIIILandroid/renderscript/Allocation;III)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v11

    move-object/from16 v0, p7

    iget v0, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v16, v0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    return-void
.end method

.method public copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .locals 12

    :try_start_0
    const-string/jumbo v2, "copy3DRangeFrom"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v10

    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v11}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v2

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copy3DRangeTo(IIIIIILjava/lang/Object;)V
    .locals 11

    const/4 v1, 0x1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 8

    const-wide/32 v6, 0x8000

    :try_start_0
    const-string/jumbo v2, "copyFrom"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copyFrom(Landroid/renderscript/Allocation;)V
    .locals 10

    const-wide/32 v8, 0x8000

    :try_start_0
    const-string/jumbo v0, "copyFrom"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Types of allocations must match."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_0
    :try_start_1
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .locals 6

    const-wide/32 v4, 0x8000

    :try_start_0
    const-string/jumbo v0, "copyFrom"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copyFrom([B)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([F)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([I)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([Landroid/renderscript/BaseObj;)V
    .locals 8

    const-wide/32 v6, 0x8000

    :try_start_0
    const-string/jumbo v3, "copyFrom"

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsObject()V

    array-length v3, p1

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-eq v3, v4, :cond_0

    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", array length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_0
    :try_start_1
    sget v3, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x4

    new-array v2, v3, [J

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    mul-int/lit8 v3, v0, 0x4

    aget-object v4, p1, v0

    iget-object v5, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3, v2}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    :try_start_2
    array-length v3, p1

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_3

    aget-object v3, p1, v0

    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public copyFrom([S)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .locals 6

    const-wide/32 v4, 0x8000

    :try_start_0
    const-string/jumbo v0, "copyFromUnchecked"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copyFromUnchecked([B)V
    .locals 2

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([F)V
    .locals 2

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([I)V
    .locals 2

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([S)V
    .locals 2

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 6

    const-wide/32 v4, 0x8000

    :try_start_0
    const-string/jumbo v0, "copyTo"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copyTo(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([B)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([F)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([I)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([S)V
    .locals 2

    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyToFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 11

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-lt p4, v1, :cond_0

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Component_number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Offset x must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-gez p2, :cond_2

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Offset y must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-gez p3, :cond_3

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Offset z must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v9

    array-length v10, v9

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mArraySizes:[I

    aget v1, v1, p4

    mul-int/2addr v0, v1

    if-eq v10, v0, :cond_4

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v7, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementRead(JIIIII[BI)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    :cond_1
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-object v0, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    return-void
.end method

.method public generateMipmaps()V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Cubemap is not supported for getByteBuffer()."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const v1, 0x32315659

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "YUV format is not supported for getByteBuffer()."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int v5, v0, v1

    const/4 v0, 0x1

    new-array v4, v0, [J

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v6

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    aget-wide v0, v4, v8

    iput-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    :cond_4
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBytesSize()I
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v0, v0, Landroid/renderscript/Type;->mDimYuv:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public getMipmap()Landroid/renderscript/Allocation$MipmapControl;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    return-object v0
.end method

.method public getStride()J
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/renderscript/Allocation;->getByteBuffer()Ljava/nio/ByteBuffer;

    :cond_0
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 4

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Allocation is not a surface texture."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationGetSurface(J)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public ioReceive()V
    .locals 6

    const-wide/32 v4, 0x8000

    :try_start_0
    const-string/jumbo v0, "ioReceive"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/Allocation;->mTimeStamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public ioSend()V
    .locals 6

    const-wide/32 v4, 0x8000

    :try_start_0
    const-string/jumbo v0, "ioSend"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationIoSend(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v3, "Resize is not allowed in API 21+."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    if-lez v2, :cond_2

    :cond_1
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v3, "Resize only support for 1D allocations at this time."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p1}, Landroid/renderscript/RenderScript;->nAllocationResize1D(JI)V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->finish()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/Type;->setID(J)V

    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setAutoPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    return-void
.end method

.method public setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 11

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-lt p4, v1, :cond_0

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Component_number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Offset x must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-gez p2, :cond_2

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Offset y must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-gez p3, :cond_3

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v2, "Offset z must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v10

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mArraySizes:[I

    aget v1, v1, p4

    mul-int/2addr v0, v1

    if-eq v10, v0, :cond_4

    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v7, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementData(JIIIII[BI)V

    return-void
.end method

.method public setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .locals 7

    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v4, v4, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v2

    div-int v0, v2, v3

    mul-int v4, v3, v0

    if-eq v4, v2, :cond_0

    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Field packer length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not divisible by element size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    return-void
.end method

.method public setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .locals 6

    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Allocation is not USAGE_IO_OUTPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method setupBufferQueue(I)V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Allocation is not USAGE_IO_INPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSetupBufferQueue(JI)V

    return-void
.end method

.method shareBufferQueue(Landroid/renderscript/Allocation;)V
    .locals 6

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Allocation is not USAGE_IO_INPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationShareBufferQueue(JJ)V

    return-void
.end method

.method public syncAll(I)V
    .locals 6

    const-wide/32 v4, 0x8000

    :try_start_0
    const-string/jumbo v0, "syncAll"

    const-wide/32 v2, 0x8000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Source must be exactly one usage type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :sswitch_0
    :try_start_1
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    :sswitch_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSyncAll(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :sswitch_2
    :try_start_2
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method updateFromNative()V
    .locals 6

    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    :cond_0
    return-void
.end method
