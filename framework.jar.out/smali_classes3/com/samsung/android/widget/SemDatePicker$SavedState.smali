.class Lcom/samsung/android/widget/SemDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemDatePicker$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/widget/SemDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/widget/SemDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/widget/SemDatePicker$SavedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIJJI)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    iput p4, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    iput-wide p5, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    iput-wide p7, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIJJILcom/samsung/android/widget/SemDatePicker$SavedState;)V
    .locals 1

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJI)V

    return-void
.end method


# virtual methods
.method public getMaxDate()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
