.class public Lcom/android/systemui/tuner/RadioListPreference;
.super Lcom/android/systemui/tuner/CustomListPreference;
.source "RadioListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;
    }
.end annotation


# instance fields
.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSummary:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tuner/RadioListPreference;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_RadioListPreference_2612(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/tuner/CustomListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onDialogCreated(Landroid/app/DialogFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 6

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1030223

    invoke-direct {v0, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v4, 0x10201b9

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00f8

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x101030b

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/android/systemui/tuner/-$Lambda$YpEOQjRLesKVxhgt1Tet2pz2SgA;

    invoke-direct {v4, v0}, Lcom/android/systemui/tuner/-$Lambda$YpEOQjRLesKVxhgt1Tet2pz2SgA;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->setPreference(Lcom/android/systemui/tuner/RadioListPreference;)V

    invoke-static {v3}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    return-object v0
.end method

.method protected onDialogStateRestored(Landroid/app/DialogFragment;Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f0a00f8

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogStateRestored(Landroid/app/DialogFragment;Landroid/app/Dialog;Landroid/os/Bundle;)V

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->setPreference(Lcom/android/systemui/tuner/RadioListPreference;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/tuner/RadioListPreference;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/tuner/CustomListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    return-void
.end method
