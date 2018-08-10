.class Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;
.super Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;
.source "SeslSlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
