.class public Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;
.super Ljava/lang/Object;
.source "MultiScreenLaunchParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiscreen/MultiScreenLaunchParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BASE_ACTIVITY:I = 0x1

.field public static final FLAG_BASE_FORCE_UPDATE:I = 0x100

.field public static final FLAG_CLEAR_TASKS:I = 0x2

.field public static final FLAG_FOCUS_POLICY:I = 0x20

.field public static final FLAG_LAYOUT_POLICY:I = 0x10

.field public static final FLAG_NO_ANIMATION:I = 0x4

.field public static final FLAG_RECREATE_VIRTUALSCREEN:I = 0x8

.field public static final FLAG_REUSE_TASK_POLICY:I = 0x80

.field public static final FLAG_ZEROPAGE_POLICY:I = 0x40


# instance fields
.field private fromDisplayChooser:Z

.field private mBaseDisplayId:I

.field private mDisplayId:I

.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams$1;

    invoke-direct {v0}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->fromDisplayChooser:Z

    iput v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mDisplayId:I

    iput v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mBaseDisplayId:I

    iput v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->fromDisplayChooser:Z

    iput p1, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mDisplayId:I

    iput v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->fromDisplayChooser:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public clearFlags(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fromDisplayChooser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->fromDisplayChooser:Z

    return v0
.end method

.method public getBaseDisplayId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mBaseDisplayId:I

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mDisplayId:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mBaseDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->fromDisplayChooser:Z

    :cond_0
    return-void
.end method

.method public setBaseDisplayId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mBaseDisplayId:I

    return-void
.end method

.method public setDisplayId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mDisplayId:I

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    return-void
.end method

.method public setFromDisplayChooser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->fromDisplayChooser:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "MultiScreenLaunchParams { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mBaseDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mBaseDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mBaseDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->fromDisplayChooser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
