.class public Lcom/android/setupwizardlib/SetupWizardItemsLayout;
.super Lcom/android/setupwizardlib/SetupWizardListLayout;
.source "SetupWizardItemsLayout.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardItemsLayout;->getAdapter()Lcom/android/setupwizardlib/items/ItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/setupwizardlib/items/ItemAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/setupwizardlib/items/ItemAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemAdapter;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
