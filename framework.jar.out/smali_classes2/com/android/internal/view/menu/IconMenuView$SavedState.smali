.class Lcom/android/internal/view/menu/IconMenuView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "IconMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/IconMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/IconMenuView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/view/menu/IconMenuView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field focusedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 731
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/view/menu/IconMenuView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 706
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 721
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    .line 720
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/view/menu/IconMenuView$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "focusedPosition"    # I

    .prologue
    .line 713
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 714
    iput p2, p0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    .line 712
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 727
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 728
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    return-void
.end method
