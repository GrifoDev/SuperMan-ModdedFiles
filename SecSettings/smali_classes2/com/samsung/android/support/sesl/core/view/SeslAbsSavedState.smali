.class public abstract Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;
.super Ljava/lang/Object;
.source "SeslAbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;


# instance fields
.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->EMPTY_STATE:Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState$2;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->mSuperState:Landroid/os/Parcelable;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->EMPTY_STATE:Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->mSuperState:Landroid/os/Parcelable;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->EMPTY_STATE:Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;

    if-ne p1, v1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->mSuperState:Landroid/os/Parcelable;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "superState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getSuperState()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->mSuperState:Landroid/os/Parcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
