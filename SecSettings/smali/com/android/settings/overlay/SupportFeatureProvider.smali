.class public interface abstract Lcom/android/settings/overlay/SupportFeatureProvider;
.super Ljava/lang/Object;
.source "SupportFeatureProvider.java"


# virtual methods
.method public abstract getAccountLoginIntent()Landroid/content/Intent;
.end method

.method public abstract getCurrentCountryCodeIfHasConfig(I)Ljava/lang/String;
.end method

.method public abstract getDisclaimerStringResId()I
.end method

.method public abstract getEstimatedWaitTime(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public abstract getHelpIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract getOperationHours(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/CharSequence;
.end method

.method public abstract getPhoneSupportCountries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneSupportCountryCodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSignInHelpIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract getSupportEligibleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
.end method

.method public abstract getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;
.end method

.method public abstract getTipsAndTricksIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract isAlwaysOperating(ILjava/lang/String;)Z
.end method

.method public abstract isOperatingNow(I)Z
.end method

.method public abstract isSupportTypeEnabled(Landroid/content/Context;I)Z
.end method

.method public abstract launchSystemInfoFragment(Landroid/os/Bundle;Landroid/app/FragmentManager;)V
.end method

.method public abstract refreshOperationRules()V
.end method

.method public abstract setShouldShowDisclaimerDialog(Landroid/content/Context;Z)V
.end method

.method public abstract shouldShowDisclaimerDialog(Landroid/content/Context;)Z
.end method

.method public abstract startSupport(Landroid/app/Activity;Landroid/accounts/Account;I)V
.end method
