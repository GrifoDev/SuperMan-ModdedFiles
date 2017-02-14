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

    new-instance v0, Lcom/samsung/android/smartface/FaceInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/smartface/FaceInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartface/FaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    invoke-virtual {p0, p1}, Lcom/samsung/android/smartface/FaceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->responseType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->horizontalMovement:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->verticalMovement:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->processStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToRotate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToPause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->guideDir:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/smartface/FaceInfo;->bFaceDetected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/smartface/FaceInfo;->bLowLightBackLighting:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/FaceInfo;->faceDistance:I

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    new-array v1, v1, [Lcom/samsung/android/smartface/FaceInfo$Person;

    iput-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    new-instance v2, Lcom/samsung/android/smartface/FaceInfo$Face;

    invoke-direct {v2}, Lcom/samsung/android/smartface/FaceInfo$Face;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->score:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->id:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    invoke-direct {v2}, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->pitch:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->roll:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->yaw:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    new-instance v2, Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

    invoke-direct {v2}, Lcom/samsung/android/smartface/FaceInfo$FaceExpression;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->expression:Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->expression:Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/smartface/FaceInfo$FaceExpression;->expression:I

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    new-instance v2, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-direct {v2}, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->addressEMail:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->phoneNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->address:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_0
    move v1, v3

    goto/16 :goto_0

    :cond_1
    move v2, v3

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->responseType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->horizontalMovement:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->verticalMovement:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->processStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToRotate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToPause:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->guideDir:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Lcom/samsung/android/smartface/FaceInfo;->bFaceDetected:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v1, p0, Lcom/samsung/android/smartface/FaceInfo;->bLowLightBackLighting:Z

    if-eqz v1, :cond_1

    :goto_1
    int-to-byte v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->faceDistance:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/samsung/android/smartface/FaceInfo;->numberOfPerson:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->score:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->pitch:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->roll:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;->yaw:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->face:Lcom/samsung/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Face;->expression:Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

    iget v1, v1, Lcom/samsung/android/smartface/FaceInfo$FaceExpression;->expression:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->addressEMail:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/smartface/FaceInfo;->person:[Lcom/samsung/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$Person;->personInfo:Lcom/samsung/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/samsung/android/smartface/FaceInfo$PersonInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_0
    move v1, v3

    goto/16 :goto_0

    :cond_1
    move v2, v3

    goto/16 :goto_1

    :cond_2
    return-void
.end method
