.class public Landroid/support/v17/leanback/widget/GuidedDatePickerAction;
.super Landroid/support/v17/leanback/widget/GuidedAction;
.source "GuidedDatePickerAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedDatePickerAction$Builder;,
        Landroid/support/v17/leanback/widget/GuidedDatePickerAction$BuilderBase;
    }
.end annotation


# instance fields
.field mDate:J

.field mDatePickerFormat:Ljava/lang/String;

.field mMaxDate:J

.field mMinDate:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GuidedAction;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mMinDate:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mMaxDate:J

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mDate:J

    return-wide v0
.end method

.method public getDatePickerFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mDatePickerFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mMinDate:J

    return-wide v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->setDate(J)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setDate(J)V
    .locals 1

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->mDate:J

    return-void
.end method
