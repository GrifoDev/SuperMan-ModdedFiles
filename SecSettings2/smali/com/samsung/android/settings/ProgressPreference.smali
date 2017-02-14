.class public Lcom/samsung/android/settings/ProgressPreference;
.super Lcom/android/settings/TintablePreference;
.source "ProgressPreference.java"


# instance fields
.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/TintablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f040227

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ProgressPreference;->setLayoutResource(I)V

    const v0, 0x7f04031b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ProgressPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/TintablePreference;->onBindView(Landroid/view/View;)V

    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/samsung/android/settings/ProgressPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/ProgressPreference;->mProgress:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/ProgressPreference;->notifyChanged()V

    return-void
.end method
