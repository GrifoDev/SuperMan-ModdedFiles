.class public Lcom/android/contacts/common/compat/PhoneAccountSdkCompat;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/telecom/PhoneAccount;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
