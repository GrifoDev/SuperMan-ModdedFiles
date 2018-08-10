.class public final Lcom/android/settings/support/SupportDisclaimerDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SupportDisclaimerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;,
        Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/accounts/Account;I)Lcom/android/settings/support/SupportDisclaimerDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/settings/support/SupportDisclaimerDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "extra_account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "extra_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private static stripUnderlines(Landroid/text/Spannable;)V
    .locals 8

    const/4 v4, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {p0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v3, v4

    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/settings/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x21

    invoke-interface {p0, v6, v2, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x20e

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x1e3

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, -0x2

    if-ne p2, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v8, [Landroid/util/Pair;

    const/16 v8, 0x1e3

    invoke-virtual {v5, v6, v8, v7}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    const v6, 0x7f0a0851

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    xor-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/settings/overlay/SupportFeatureProvider;->setShouldShowDisclaimerDialog(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    new-array v6, v8, [Landroid/util/Pair;

    const/16 v7, 0x2f8

    invoke-virtual {v5, v0, v7, v6}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    new-array v6, v8, [Landroid/util/Pair;

    const/16 v7, 0x1e4

    invoke-virtual {v5, v0, v7, v6}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v5, "extra_account"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    const-string/jumbo v7, "extra_type"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v6, v5, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->startSupport(Landroid/app/Activity;Landroid/accounts/Account;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f121ada

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    invoke-virtual {v6, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d02fc

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0a0852

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/overlay/SupportFeatureProvider;->getDisclaimerStringResId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->stripUnderlines(Landroid/text/Spannable;)V

    invoke-static {v5, p0}, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;->linkify(Landroid/text/Spannable;Landroid/app/DialogFragment;)Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
