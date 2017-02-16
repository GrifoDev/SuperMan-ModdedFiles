.class abstract Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;
.super Ljava/lang/Object;
.source "SemTimePicker.java"

# interfaces
.implements Lcom/samsung/android/widget/SemTimePicker$SemTimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractSemTimePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Lcom/samsung/android/widget/SemTimePicker;

.field protected mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;

.field protected mOnTimeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Lcom/samsung/android/widget/SemTimePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    .line 462
    iput-object p2, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 465
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 460
    return-void
.end method


# virtual methods
.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 468
    return-void
.end method
