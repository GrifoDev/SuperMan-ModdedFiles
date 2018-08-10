.class public final Lcom/samsung/android/biometrics/EyeInfo;
.super Ljava/lang/Object;
.source "EyeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/EyeInfo$1;,
        Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;,
        Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/biometrics/EyeInfo;",
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

.field public static final INFO_NOT_SUPPORTED:I = -0x1

.field public static final IRIS_ACQUIRED_CHANGE_YOUR_POSITION:I = 0xc

.field public static final IRIS_ACQUIRED_EYE_NOT_PRESENT:I = 0xa

.field public static final IRIS_ACQUIRED_FAIL_IN_DOOR:I = 0xf

.field public static final IRIS_ACQUIRED_FAIL_OUT_DOOR:I = 0x10

.field public static final IRIS_ACQUIRED_GOOD:I = 0x0

.field public static final IRIS_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final IRIS_ACQUIRED_MOVE_CLOSER:I = 0x3

.field public static final IRIS_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final IRIS_ACQUIRED_MOVE_FARTHER:I = 0x4

.field public static final IRIS_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final IRIS_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final IRIS_ACQUIRED_MOVE_SOMEWHERE_DARKER:I = 0xb

.field public static final IRIS_ACQUIRED_MOVE_UP:I = 0x7

.field public static final IRIS_ACQUIRED_OPEN_EYES_WIDER:I = 0x9

.field public static final IRIS_ACQUIRED_PARTIAL:I = 0x1

.field public static final IRIS_ACQUIRED_PASS_IN_DOOR:I = 0xd

.field public static final IRIS_ACQUIRED_PASS_OUT_DOOR:I = 0xe

.field public static final IRIS_LEFT_EYE:I = 0x0

.field public static final IRIS_RIGHT_EYE:I = 0x1

.field public static final OPENING_GOOD:I = 0x0

.field public static final OPENING_SMALL:I = 0x1

.field public static final OPENING_TOO_SMALL:I = 0x3

.field public static final OPENING_VERY_SMALL:I = 0x2

.field public static final PUPIL_INFO_EYE_IS_FAKE:I = 0x3

.field public static final PUPIL_INFO_EYE_LOW_IRIS_SCLERA_CONTRAST:I = 0x5

.field public static final PUPIL_INFO_EYE_LOW_PUPIL_IRIS_CONTRAST:I = 0x4

.field public static final PUPIL_INFO_EYE_NOT_PRESENT:I = 0x1

.field public static final PUPIL_INFO_EYE_REGION_LOW_CONSTRAST:I = 0x2

.field public static final PUPIL_INFO_LESS_QUALITY_SCORE:I = 0x7

.field public static final PUPIL_INFO_NONE:I = 0x0

.field public static final PUPIL_INFO_SMALL_MATCH_AREA:I = 0x6

.field public static final REFLECTION_INFO_EYE_HIGHLIGHT_OCCLUSION:I = 0x0

.field public static final REFLECTION_INFO_EYE_REGION_OVERILLUMINATED:I = 0x1


# instance fields
.field public mAcquireInfo:I

.field public mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

.field public mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

.field public mReflectionNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/biometrics/EyeInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/biometrics/EyeInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/biometrics/EyeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    iput-object v2, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    iput v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mAcquireInfo:I

    iput v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionNum:I

    new-array v1, v3, [Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    iput-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionNum:I

    iget v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionNum:I

    new-array v1, v1, [Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    iput-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    new-instance v2, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    invoke-direct {v2}, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mDistance:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mOpening:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mMsgId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionNum:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    new-instance v2, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    invoke-direct {v2}, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mMsgId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mAcquireInfo:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/biometrics/EyeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/EyeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    iput-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    iput v0, p0, Lcom/samsung/android/biometrics/EyeInfo;->mAcquireInfo:I

    iput v0, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionNum:I

    iput-object p1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    iput-object p2, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    iput p3, p0, Lcom/samsung/android/biometrics/EyeInfo;->mAcquireInfo:I

    iput p4, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionNum:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionNum:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mDistance:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mOpening:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mPupilInfo:[Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/biometrics/EyeInfo$PupilInfo;->mMsgId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionNum:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mReflectionInfo:[Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/biometrics/EyeInfo$ReflectionInfo;->mMsgId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/samsung/android/biometrics/EyeInfo;->mAcquireInfo:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
