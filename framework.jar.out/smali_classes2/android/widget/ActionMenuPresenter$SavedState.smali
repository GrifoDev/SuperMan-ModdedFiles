.class Landroid/widget/ActionMenuPresenter$SavedState;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/ActionMenuPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public openSubMenuId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 993
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState$1;

    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState$1;-><init>()V

    .line 992
    sput-object v0, Landroid/widget/ActionMenuPresenter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 972
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 978
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 989
    iget v0, p0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    return-void
.end method
