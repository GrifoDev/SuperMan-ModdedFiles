.class public Lcom/android/settings/datausage/BillingCycleChnPreference;
.super Landroid/preference/Preference;
.source "BillingCycleChnPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    const/4 v4, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleChnPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v3, 0x0

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleChnPreference;->mTemplate:Landroid/net/NetworkTemplate;

    iput p2, p0, Lcom/android/settings/datausage/BillingCycleChnPreference;->mSubId:I

    iput-object p3, p0, Lcom/android/settings/datausage/BillingCycleChnPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleChnPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/BillingCycleChnPreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
