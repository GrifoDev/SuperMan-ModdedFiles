.class public Lcom/android/contacts/common/compat/PhoneNumberFormattingTextWatcherCompat;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .locals 1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    goto :goto_0
.end method
