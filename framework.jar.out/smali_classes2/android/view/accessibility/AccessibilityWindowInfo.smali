.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityWindowInfo$1;
    }
.end annotation


# static fields
.field public static final ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final ANY_WINDOW_ID:I = -0x2

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final PICTURE_IN_PICTURE_ACTION_REPLACER_WINDOW_ID:I = -0x3

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field public static final UNDEFINED_WINDOW_ID:I = -0x1

.field private static sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnchorId:I

.field private mBooleanProperties:I

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildIds:Landroid/util/LongArray;

.field private mConnectionId:I

.field private mId:I

.field private mInPictureInPicture:Z

.field private mLayer:I

.field private mParentId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mType:I


# direct methods
.method static synthetic -wrap0(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-void
.end method

.method private clear()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    :cond_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v3, :cond_0

    new-instance v3, Landroid/util/LongArray;

    invoke-direct {v3, v0}, Landroid/util/LongArray;-><init>(I)V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    :cond_0
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    iput-boolean v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v1

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-object v0

    :cond_1
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    goto :goto_0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    goto :goto_0
.end method

.method public static setNumInstancesInUseCounter(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    sput-object p0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_0
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "<UNKNOWN>"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "TYPE_APPLICATION"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "TYPE_INPUT_METHOD"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "TYPE_SYSTEM"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "TYPE_SPLIT_SCREEN_DIVIDER"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addChild(I)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method public changed(Landroid/view/accessibility/AccessibilityWindowInfo;)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not same window."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v0, v1, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_6

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_7

    return v2

    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v4, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, -0x1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    if-ne v0, v2, :cond_1

    :cond_0
    return-object v8

    :cond_1
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v0, v2, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    int-to-long v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-object v4

    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v2, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    return-object v2
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    const/4 v2, -0x1

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1
.end method

.method public getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v8

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public inPictureInPicture()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v0

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setActive(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setAnchorId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setConnectionId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-void
.end method

.method public setFocused(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return-void
.end method

.method public setLayer(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return-void
.end method

.method public setParentId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    return-void
.end method

.method public setPictureInPicture(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AccessibilityWindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", pictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->inPictureInPicture()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", hasParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v1, v5, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", isAnchored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    if-eq v1, v5, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", hasChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v4, 0x0

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mInPictureInPicture:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_2

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
