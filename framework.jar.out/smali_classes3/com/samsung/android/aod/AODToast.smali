.class public Lcom/samsung/android/aod/AODToast;
.super Ljava/lang/Object;
.source "AODToast.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/AODToast$1;,
        Lcom/samsung/android/aod/AODToast$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/aod/AODToast;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I


# instance fields
.field private mDuration:I

.field private mDurationMillis:J

.field private mGravity:I

.field private mHorizontalMargin:F

.field private mText:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;

.field private mVerticalMargin:F

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/aod/AODToast$1;

    invoke-direct {v0}, Lcom/samsung/android/aod/AODToast$1;-><init>()V

    sput-object v0, Lcom/samsung/android/aod/AODToast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/aod/AODToast;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/aod/AODToast;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/aod/AODToast;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/aod/AODToast$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AODToast;->mToken:Landroid/os/IBinder;

    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-get4(Lcom/samsung/android/aod/AODToast$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-get0(Lcom/samsung/android/aod/AODToast$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-get1(Lcom/samsung/android/aod/AODToast$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-get2(Lcom/samsung/android/aod/AODToast$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-get6(Lcom/samsung/android/aod/AODToast$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-get7(Lcom/samsung/android/aod/AODToast$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-get3(Lcom/samsung/android/aod/AODToast$Builder;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-get5(Lcom/samsung/android/aod/AODToast$Builder;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/aod/AODToast$Builder;Lcom/samsung/android/aod/AODToast;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/aod/AODToast;-><init>(Lcom/samsung/android/aod/AODToast$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuratioinMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODToast;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getVerticalMargin()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    return v0
.end method

.method public getXOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[AODToast: text:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") duration:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") durationMillis:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " gravity:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") xOffset:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") yOffset:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hMargin:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") vMargin:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/aod/AODToast;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
