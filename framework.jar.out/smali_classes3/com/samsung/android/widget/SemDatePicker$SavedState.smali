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
.field private final mListPosition:I

.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1353
    new-instance v0, Lcom/samsung/android/widget/SemDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1280
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1307
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    .line 1309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    .line 1310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    .line 1311
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    .line 1312
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    .line 1313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mListPosition:I

    .line 1306
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/widget/SemDatePicker$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIJJI)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "listPosition"    # I

    .prologue
    .line 1294
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1295
    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    .line 1296
    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    .line 1297
    iput p4, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    .line 1298
    iput-wide p5, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    .line 1299
    iput-wide p7, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    .line 1300
    iput p9, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mListPosition:I

    .line 1293
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIJJILcom/samsung/android/widget/SemDatePicker$SavedState;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "listPosition"    # I

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJI)V

    return-void
.end method


# virtual methods
.method public getListPosition()I
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mListPosition:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 1344
    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 1340
    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 1

    .prologue
    .line 1328
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    .prologue
    .line 1332
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    .prologue
    .line 1336
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1318
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1319
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1323
    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1324
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mListPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    return-void
.end method
