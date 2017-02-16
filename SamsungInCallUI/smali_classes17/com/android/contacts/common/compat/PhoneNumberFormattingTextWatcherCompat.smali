.class public Lcom/android/contacts/common/compat/PhoneNumberFormattingTextWatcherCompat;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcherCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .locals 1
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 26
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    goto :goto_0
.end method
