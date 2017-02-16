.class public final Lcom/samsung/android/smartface/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/FaceInfo$1;,
        Lcom/samsung/android/smartface/FaceInfo$Face;,
        Lcom/samsung/android/smartface/FaceInfo$FaceExpression;,
        Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;,
        Lcom/samsung/android/smartface/FaceInfo$Person;,
        Lcom/samsung/android/smartface/FaceInfo$PersonInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FACE_EXISTENCE:I = 0x1

.field public static final CHECK_FACE_EXISTENCE_WITH_ORIENTATION:I = 0x40

.field public static final CHECK_FACE_ROTATION:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartface/FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIND_FACES:I = 0x2

.field public static final FIND_FACE_AND_PERSON_INFO:I = 0x8

.field public static final FIND_FACE_COMPONENT:I = 0x20

.field public static final FIND_FACE_POSE_INFO:I = 0x10

.field public static final NEED_TO_PAUSE:I = 0x1

.field public static final NEED_TO_PLAY:I = 0x0

.field public static final NEED_TO_SLEEP:I = 0x0

.field public static final NEED_TO_STAY:I = 0x1


# instance fields
.field public bFaceDetected:Z

.field public bLowLightBackLighting:Z

.field public faceDistance:I

.field public guideDir:I

.field public horizontalMovement:I

.field public needToPause:I

.field public needToRotate:I

.field public needToStay:I

.field public numberOfPerson:I

.field public person:[Lcom/samsung/android/smartface/FaceInfo$Person;

.field public processStatus:I

.field public responseType:I

.field public verticalMovement:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 373
    new-instance v0, Lcom/samsung/android/smartface/FaceInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/smartface/FaceInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartface/FaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    .line 240
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartface/FaceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->responseType:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->horizontalMovement:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->verticalMovement:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->processStatus:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToRotate:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToPause:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->guideDir:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/smartface/FaceInfo;->bFaceDetected:Z

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/smartface/FaceInfo;->bLowLightBackLighting:Z

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->faceDistance:I

    .line 322
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    new-array v1, v1, [Lcom/samsung/android/smartface/FaceInfo$Person;

    iput-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    if-ge v0, v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    new-instance v2, Lcom/samsung/android/smartface/FaceInfo$Face;

    invoke-direct {v2}, Lcom/samsung/android/smartface/FaceInfo$Face;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    .line 327
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    .line 328
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 329
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 330
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 331
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 333
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->score:I

    .line 335
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->id:I

    .line 337
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    .line 338
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 339
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 341
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    .line 342
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 343
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 345
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    .line 346
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 347
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 349
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    .line 350
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 351
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 353
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    invoke-direct {v2}, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    .line 354
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->pitch:I

    .line 355
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->roll:I

    .line 356
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->yaw:I

    .line 358
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

    invoke-direct {v2}, Lcom/samsung/android/smartface/FaceInfo$FaceExpression;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->expression:Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

    .line 359
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->expression:Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$FaceExpression;->expression:I

    .line 361
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    new-instance v2, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-direct {v2}, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    .line 362
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->addressEMail:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->phoneNumber:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->address:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->name:Ljava/lang/String;

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .end local v0    # "i":I
    :cond_0
    move v1, v3

    .line 318
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 319
    goto/16 :goto_1

    .line 306
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 254
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->responseType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->horizontalMovement:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->verticalMovement:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->processStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToRotate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToPause:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->guideDir:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-boolean v1, p0, Lcom/samsung/android/smartface/FaceInfo;->bFaceDetected:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 265
    iget-boolean v1, p0, Lcom/samsung/android/smartface/FaceInfo;->bLowLightBackLighting:Z

    if-eqz v1, :cond_1

    :goto_1
    int-to-byte v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 266
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->faceDistance:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    if-ge v0, v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->score:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->pitch:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->roll:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->yaw:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->expression:Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$FaceExpression;->expression:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->addressEMail:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .end local v0    # "i":I
    :cond_0
    move v1, v3

    .line 264
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 265
    goto/16 :goto_1

    .line 252
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method
