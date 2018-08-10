.class public Landroid/accessibilityservice/GestureDescription$TouchPoint;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$TouchPoint$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_IS_END_OF_PATH:I = 0x2

.field private static final FLAG_IS_START_OF_PATH:I = 0x1


# instance fields
.field public mContinuedStrokeId:I

.field public mIsEndOfPath:Z

.field public mIsStartOfPath:Z

.field public mStrokeId:I

.field public mX:F

.field public mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .locals 1

    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
