.class public final Lcom/samsung/android/bio/face/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/FaceInfo$1;,
        Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;,
        Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/bio/face/FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISTANCE_CLOSE:I = 0x1

.field public static final DISTANCE_FAR:I = 0x4

.field public static final DISTANCE_GOOD:I = 0x0

.field public static final DISTANCE_TOO_CLOSE:I = 0x3

.field public static final DISTANCE_TOO_FAR:I = 0x6

.field public static final DISTANCE_VERY_CLOSE:I = 0x2

.field public static final DISTANCE_VERY_FAR:I = 0x5

.field public static final FACE_ACQUIRED_CHANGE_YOUR_POSITION:I = 0xc

.field public static final FACE_ACQUIRED_FACE_NOT_PRESENT:I = 0xa

.field public static final FACE_ACQUIRED_GOOD:I = 0x0

.field public static final FACE_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FACE_ACQUIRED_MOVE_CLOSER:I = 0x3

.field public static final FACE_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final FACE_ACQUIRED_MOVE_FARTHER:I = 0x4

.field public static final FACE_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final FACE_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final FACE_ACQUIRED_MOVE_SOMEWHERE_DARKER:I = 0xb

.field public static final FACE_ACQUIRED_MOVE_UP:I = 0x7

.field public static final FACE_ACQUIRED_OPEN_FACES_WIDER:I = 0x9

.field public static final FACE_ACQUIRED_PARTIAL:I = 0x1

.field public static final FACE_LEFT_FACE:I = 0x0

.field public static final FACE_RIGHT_FACE:I = 0x1

.field public static final INFO_NOT_SUPPORTED:I = -0x1

.field public static final OPENING_GOOD:I = 0x0

.field public static final OPENING_SMALL:I = 0x1

.field public static final OPENING_TOO_SMALL:I = 0x3

.field public static final OPENING_VERY_SMALL:I = 0x2

.field public static final PUPIL_INFO_FACE_IS_FAKE:I = 0x3

.field public static final PUPIL_INFO_FACE_LOW_FACE_SCLERA_CONTRAST:I = 0x5

.field public static final PUPIL_INFO_FACE_LOW_PUPIL_FACE_CONTRAST:I = 0x4

.field public static final PUPIL_INFO_FACE_NOT_PRESENT:I = 0x1

.field public static final PUPIL_INFO_FACE_REGION_LOW_CONSTRAST:I = 0x2

.field public static final PUPIL_INFO_LESS_QUALITY_SCORE:I = 0x7

.field public static final PUPIL_INFO_NONE:I = 0x0

.field public static final PUPIL_INFO_SMALL_MATCH_AREA:I = 0x6

.field public static final REFLECTION_INFO_FACE_HIGHLIGHT_OCCLUSION:I = 0x0

.field public static final REFLECTION_INFO_FACE_REGION_OVERILLUMINATED:I = 0x1


# instance fields
.field public mAcquireInfo:I

.field public mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

.field public mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

.field public mReflectionNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/samsung/android/bio/face/FaceInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/bio/face/FaceInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/bio/face/FaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, -0x1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object v2, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    .line 208
    iput-object v2, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    .line 212
    iput v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mAcquireInfo:I

    .line 214
    iput v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionNum:I

    .line 229
    new-array v1, v3, [Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    iput-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionNum:I

    .line 231
    iget v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionNum:I

    new-array v1, v1, [Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    iput-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 233
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    new-instance v2, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    invoke-direct {v2}, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;-><init>()V

    aput-object v2, v1, v0

    .line 234
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    .line 236
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 237
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 238
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 239
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 240
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mDistance:I

    .line 241
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mOpening:I

    .line 242
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mMsgId:I

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionNum:I

    if-ge v0, v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    new-instance v2, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    invoke-direct {v2}, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;-><init>()V

    aput-object v2, v1, v0

    .line 246
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    .line 248
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 249
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 250
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 251
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 252
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mMsgId:I

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mAcquireInfo:I

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/bio/face/FaceInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/FaceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;II)V
    .locals 2
    .param p1, "pupilInfo"    # [Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;
    .param p2, "reflectionInfo"    # [Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;
    .param p3, "acquireInfo"    # I
    .param p4, "reflectionNum"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    .line 208
    iput-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    .line 212
    iput v0, p0, Lcom/samsung/android/bio/face/FaceInfo;->mAcquireInfo:I

    .line 214
    iput v0, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionNum:I

    .line 220
    iput-object p1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    .line 221
    iput-object p2, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    .line 223
    iput p3, p0, Lcom/samsung/android/bio/face/FaceInfo;->mAcquireInfo:I

    .line 224
    iput p4, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionNum:I

    .line 219
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 278
    iget v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionNum:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mDistance:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mOpening:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mPupilInfo:[Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/bio/face/FaceInfo$PupilInfo;->mMsgId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionNum:I

    if-ge v0, v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mReflectionInfo:[Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/bio/face/FaceInfo$ReflectionInfo;->mMsgId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_1
    iget v1, p0, Lcom/samsung/android/bio/face/FaceInfo;->mAcquireInfo:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    return-void
.end method
