.class public Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
.super Ljava/lang/Object;
.source "CocktailBarStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailBarStateInfo$1;
    }
.end annotation


# static fields
.field public static final BACKGROUND_DIM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKGROUND_OPAQUE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKGROUND_TRANSPARENT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKGROUND_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CHANGE_ACTIVATE:I = 0x40

.field public static final FLAG_CHANGE_BACKGROUND_TYPE:I = 0x2

.field public static final FLAG_CHANGE_LOCK_STATE:I = 0x8

.field public static final FLAG_CHANGE_MODE:I = 0x10

.field public static final FLAG_CHANGE_POSITION:I = 0x4

.field public static final FLAG_CHANGE_SHOW_TIMEOUT:I = 0x20

.field public static final FLAG_CHANGE_VISIBILITY:I = 0x1

.field public static final FLAG_CHANGE_WINDOW_TYPE:I = 0x80

.field public static final LOCK_STATE_HIDE:I = 0x2

.field public static final LOCK_STATE_NONE:I = 0x0

.field public static final LOCK_STATE_RESTRICT:I = 0x4

.field public static final LOCK_STATE_SHOW:I = 0x1

.field public static final MODE_IMMERSIVE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_MULTITASKING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_UNKNOWN:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSITION_BOTTOM:I = 0x4

.field public static final POSITION_LEFT:I = 0x1

.field public static final POSITION_RIGHT:I = 0x2

.field public static final POSITION_TOP:I = 0x3

.field public static final POSITION_UNKNOWN:I = 0x0

.field public static final STATE_INVISIBLE:I = 0x2

.field public static final STATE_VISIBLE:I = 0x1

.field public static final WINDOW_TYPE_FULLSCREEN:I = 0x2

.field public static final WINDOW_TYPE_MINIMIZE:I = 0x1

.field public static final WINDOW_TYPE_UNKNOWN:I


# instance fields
.field public activate:Z

.field public background:I

.field public backgroundType:I

.field public changeFlag:I

.field public lockState:I

.field public mode:I

.field public position:I

.field public showTimeout:I

.field public visibility:I

.field public windowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iget-boolean v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->background:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
