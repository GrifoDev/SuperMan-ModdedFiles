.class public abstract Lcom/android/settings/notification/EmptyTextSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "EmptyTextSettings.java"


# instance fields
.field private mEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/notification/EmptyTextSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    const v1, 0x7f0f0266

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    const v0, 0x102003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/EmptyTextSettings;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method protected setEmptyText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
