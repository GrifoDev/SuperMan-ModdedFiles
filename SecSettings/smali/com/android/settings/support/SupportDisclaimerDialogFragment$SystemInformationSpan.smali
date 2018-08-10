.class public Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;
.super Landroid/text/style/URLSpan;
.source "SupportDisclaimerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/support/SupportDisclaimerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemInformationSpan"
.end annotation


# instance fields
.field private final mDialog:Landroid/app/DialogFragment;

.field private mSupport:Lcom/android/settings/overlay/SupportFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/app/DialogFragment;)V
    .locals 2

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;->mSupport:Lcom/android/settings/overlay/SupportFeatureProvider;

    iput-object p1, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;->mDialog:Landroid/app/DialogFragment;

    return-void
.end method

.method public static linkify(Landroid/text/Spannable;Landroid/app/DialogFragment;)Ljava/lang/CharSequence;
    .locals 9

    const/4 v5, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/Annotation;

    invoke-interface {p0, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/Annotation;

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v3, v5

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const-string/jumbo v7, "url"

    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v2, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;

    invoke-direct {v2, p1}, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;-><init>(Landroid/app/DialogFragment;)V

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/16 v7, 0x21

    invoke-interface {p0, v2, v4, v1, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;->mSupport:Lcom/android/settings/overlay/SupportFeatureProvider;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;->mSupport:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/settings/overlay/SupportFeatureProvider;->launchSystemInfoFragment(Landroid/os/Bundle;Landroid/app/FragmentManager;)V

    iget-object v1, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public setSupportProvider(Lcom/android/settings/overlay/SupportFeatureProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/support/SupportDisclaimerDialogFragment$SystemInformationSpan;->mSupport:Lcom/android/settings/overlay/SupportFeatureProvider;

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
