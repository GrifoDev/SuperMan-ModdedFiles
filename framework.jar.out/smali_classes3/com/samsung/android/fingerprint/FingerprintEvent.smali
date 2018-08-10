.class public final Lcom/samsung/android/fingerprint/FingerprintEvent;
.super Ljava/lang/Object;
.source "FingerprintEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintEvent$1;
    }
.end annotation


# static fields
.field public static final CAPTURE_STATUS_KEY_BADSWIPES:Ljava/lang/String; = "badSwipes"

.field public static final CAPTURE_STATUS_KEY_IMAGEQUALITY:Ljava/lang/String; = "imageQuality"

.field public static final CAPTURE_STATUS_KEY_IMAGEQUALITY_FEEDBACK:Ljava/lang/String; = "imageQualityFeedback"

.field public static final CAPTURE_STATUS_KEY_IMAGEQUALITY_RSRC_ID:Ljava/lang/String; = "imageQualityRsrcId"

.field public static final CAPTURE_STATUS_KEY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CAPTURE_STATUS_KEY_TEMPLATERESULT:Ljava/lang/String; = "templateResult"

.field public static final CAPTURE_STATUS_KEY_TOTALSWIPES:Ljava/lang/String; = "totalSwipes"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/fingerprint/FingerprintEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field public static final EVENT_ENROLL_FINISHED:I = 0x4

.field public static final EVENT_ENROLL_READY:I = 0x1

.field public static final EVENT_ENROLL_SETTLED:I = 0x5

.field public static final EVENT_ENROLL_STARTED:I = 0x2

.field public static final EVENT_ENROLL_STATUS:I = 0x3

.field public static final EVENT_FACTORY_APP:I = 0x3e7

.field public static final EVENT_FINGER_REMOVED:I = 0x3f3

.field public static final EVENT_FINGER_SWIPE_SPEED:I = 0x3f5

.field public static final EVENT_GESTURE:I = 0x3f2

.field public static final EVENT_IDENTIFY_COMPLETED:I = 0x10

.field public static final EVENT_IDENTIFY_FINISHED:I = 0xd

.field public static final EVENT_IDENTIFY_READY:I = 0xb

.field public static final EVENT_IDENTIFY_SETTLED:I = 0xf

.field public static final EVENT_IDENTIFY_STARTED:I = 0xc

.field public static final EVENT_IDENTIFY_STATUS:I = 0xe

.field public static final EVENT_IDLE:I = 0x2710

.field public static final EVENT_NAVIGATION_EVENT:I = 0x3e8

.field public static final EVENT_SERVICE_DIED:I = 0x186a0

.field public static final EVENT_SERVICE_PREPARED:I = 0x30d40

.field public static final FACTORY_APP_ID:Ljava/lang/String; = "FACTORY_APP_ID"

.field public static final IDENTIFY_INFO_KEY_FINGERINDEX:Ljava/lang/String; = "fingerIndex"

.field public static final IDENTIFY_INFO_KEY_PERMISSION:Ljava/lang/String; = "permission"

.field public static final IDENTIFY_INFO_KEY_USER_ID:Ljava/lang/String; = "userId"

.field public static final IMAGE_QUALITY_BAD_SWIPE:I = 0x2000

.field public static final IMAGE_QUALITY_EXTRACTION_FAILURE:I = 0x40000000

.field public static final IMAGE_QUALITY_FINGER_OFFSET:I = 0x1000

.field public static final IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_LEFT:I = 0x20000

.field public static final IMAGE_QUALITY_FINGER_OFFSET_TOO_FAR_RIGHT:I = 0x40000

.field public static final IMAGE_QUALITY_FINGER_TOO_THIN:I = 0x2000000

.field public static final IMAGE_QUALITY_GOOD:I = 0x0

.field public static final IMAGE_QUALITY_NO_OVERLAP:I = 0x50000000

.field public static final IMAGE_QUALITY_PATAIL_TOUCH:I = 0x60000000

.field public static final IMAGE_QUALITY_PRESSURE_TOO_HARD:I = 0x80000

.field public static final IMAGE_QUALITY_PRESSURE_TOO_LIGHT:I = 0x10000

.field public static final IMAGE_QUALITY_REVERSE_MOTION:I = 0x3

.field public static final IMAGE_QUALITY_SAME_AS_PREVIOUS:I = 0x30000000

.field public static final IMAGE_QUALITY_SKEW_TOO_LARGE:I = 0x8000

.field public static final IMAGE_QUALITY_SOMETHING_ON_THE_SENSOR:I = 0x200

.field public static final IMAGE_QUALITY_STICTION:I = 0x1

.field public static final IMAGE_QUALITY_TOO_FAST:I = 0x2

.field public static final IMAGE_QUALITY_TOO_SHORT:I = 0x4

.field public static final IMAGE_QUALITY_TOO_SLOW:I = 0x10

.field public static final IMAGE_QUALITY_WET_FINGER:I = 0x1000000

.field public static final IMAGE_QUALITY_WRONG_FINGER:I = 0x20000000

.field public static final NOTIFY_ACTIVITY_DESTROYED:I = 0x3

.field public static final NOTIFY_ACTIVITY_PAUSED:I = 0x1

.field public static final NOTIFY_ACTIVITY_STOPPED:I = 0x2

.field public static final NOTIFY_DIALOG_DISMISS_REQUEST:I = 0x4

.field public static final RESULT_DATABASE_FAILURE:I = -0x4

.field public static final RESULT_FAILED:I = -0x1

.field public static final RESULT_INVALID_TOKEN:I = -0x3

.field public static final RESULT_IN_PROGRESS:I = -0x2

.field public static final RESULT_NO_REGISTERED_FINGER:I = -0x5

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final STATUS_ALREADY_REGISTERED:I = 0x1

.field public static final STATUS_ALTERNATIVE_PASSWORD:I = 0x64

.field public static final STATUS_BACKUP_BUTTON_PRESSED:I = 0x9

.field public static final STATUS_CAPTURE_COMPLETED:I = 0x15

.field public static final STATUS_CAPTURE_FAILED:I = 0x14

.field public static final STATUS_DEVICE_NEED_RECAL:I = 0x6e

.field public static final STATUS_ENROLL_FAILURE_SERVICE_FAILURE:I = 0x78

.field public static final STATUS_GOOD:I = 0x0

.field public static final STATUS_IDENTIFY_FAILURE_DATABASE_FAILURE:I = 0x7a

.field public static final STATUS_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x7b

.field public static final STATUS_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x79

.field public static final STATUS_NEED_TO_RETRY:I = 0xf

.field public static final STATUS_OPERATION_DENIED:I = 0x33

.field public static final STATUS_QUALITY_FAILED:I = 0xc

.field public static final STATUS_SAMSUNG_ACCOUNT_BUTTON_PRESSED:I = 0xa

.field public static final STATUS_SENSOR_CHANGED:I = 0xe

.field public static final STATUS_SENSOR_ERROR:I = 0x7

.field public static final STATUS_TIMEOUT:I = 0x4

.field public static final STATUS_UNKNOWN:I = 0x10

.field public static final STATUS_USER_CANCELLED:I = 0x8

.field public static final STATUS_USER_CANCELLED_BY_TOUCH_OUTSIDE:I = 0xd

.field public static final STATUS_USER_VERIFICATION_FAILED:I = 0xb

.field public static final STATUS_VERIFY_IRIS:I = 0x7d

.field public static final SWIPE_DIRECTION_DOWN:I = 0x1

.field public static final SWIPE_DIRECTION_LEFT:I = 0x3

.field public static final SWIPE_DIRECTION_REST:I = 0x5

.field public static final SWIPE_DIRECTION_RIGHT:I = 0x4

.field public static final SWIPE_DIRECTION_UNKNOWN:I = -0x1

.field public static final SWIPE_DIRECTION_UP:I = 0x0

.field public static final SWIPE_KEY_DIRECTION:Ljava/lang/String; = "direction"

.field public static final SWIPE_KEY_SPEED:Ljava/lang/String; = "swipeSpeed"

.field private static final TAG:Ljava/lang/String; = "FPMS_FingerprintEvent"

.field private static final eventIdNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final eventImageQualityNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final eventResultNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final eventStatusNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final eventSwipeDirectionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final eventData:Landroid/os/Bundle;

.field public eventId:I

.field public eventResult:I

.field public eventStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->DEBUG:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventIdNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResultNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatusNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventImageQualityNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventSwipeDirectionMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventIdNameMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVENT_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResultNameMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "RESULT_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatusNameMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "STATUS_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventImageQualityNameMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "IMAGE_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventSwipeDirectionMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "SWIPE_DIRECTION_"

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/fingerprint/FingerprintEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    iput p1, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-class v4, Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "FPMS_FingerprintEvent"

    const-string/jumbo v7, "generateNameMap: failed "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/samsung/android/fingerprint/FingerprintEvent;->DEBUG:Z

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getSwipeDirection()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "direction"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toString(Lcom/samsung/android/fingerprint/FingerprintEvent;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getEventIdName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getEventResultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getEventStatusName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBadSwipes()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "badSwipes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEventIdName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventIdNameMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventResultName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResultNameMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventStatusName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatusNameMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFingerIndex()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "fingerIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIdentifiedUserId()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "userId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getImageQuality()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "imageQuality"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getImageQualityFeedback()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "imageQualityFeedback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageQualityName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventImageQualityNameMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImageQualityRsrcId()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "imageQualityRsrcId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSwipeDirectionName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventSwipeDirectionMap:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getSwipeDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSwipeSpeed()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "swipeSpeed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTemplateResult()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "templateResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalSwipes()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    const-string/jumbo v1, "totalSwipes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
