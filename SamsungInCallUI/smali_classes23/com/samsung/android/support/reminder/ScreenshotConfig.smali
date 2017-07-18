.class public Lcom/samsung/android/support/reminder/ScreenshotConfig;
.super Ljava/lang/Object;
.source "ScreenshotConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/reminder/ScreenshotConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public captureRect:Landroid/graphics/Rect;

.field public delayInMillis:I

.field mWindowFlags:I

.field mWindowHeight:I

.field mWindowWidth:I

.field public offsetStatusBar:Z

.field public offsetTitleBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/reminder/ScreenshotConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/support/reminder/ScreenshotConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->offsetTitleBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->offsetStatusBar:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->offsetTitleBar:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->offsetStatusBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->offsetTitleBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->offsetStatusBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->delayInMillis:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCaptureWindowFlags()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowFlags:I

    return v0
.end method

.method public getCaptureWindowHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowHeight:I

    return v0
.end method

.method public getCaptureWindowWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->mWindowHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->offsetTitleBar:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->offsetStatusBar:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->delayInMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/support/reminder/ScreenshotConfig;->captureRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
