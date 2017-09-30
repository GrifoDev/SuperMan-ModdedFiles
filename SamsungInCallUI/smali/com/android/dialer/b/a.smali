.class public Lcom/android/dialer/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/dialer/b/a;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/dialer/b/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/android/dialer/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/dialer/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/dialer/b/a;->c(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->a(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/dialer/b/a;->c(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->b(Landroid/telecom/TelecomManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/dialer/b/a;->a:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/android/dialer/b/a;->a:Z

    if-nez v1, :cond_0

    const-string v1, "TelecomUtil"

    const-string v2, "Dialer is not currently set to be default dialer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/dialer/b/a;->a:Z

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method
