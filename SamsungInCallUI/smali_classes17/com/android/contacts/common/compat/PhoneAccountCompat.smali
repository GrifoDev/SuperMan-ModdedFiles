.class public Lcom/android/contacts/common/compat/PhoneAccountCompat;
.super Ljava/lang/Object;
.source "PhoneAccountCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/contacts/common/compat/PhoneAccountCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/compat/PhoneAccountCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIconDrawable(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/PhoneAccountCompat;->createIconDrawableMarshmallow(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopMr1Compatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/PhoneAccountCompat;->createIconDrawableLollipopMr1(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static createIconDrawableLollipopMr1(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 90
    :try_start_0
    const-class v2, Landroid/telecom/PhoneAccount;

    const-string v4, "createIconDrawable"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 91
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    move-object v2, v3

    .line 93
    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/contacts/common/compat/PhoneAccountCompat;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected exception when attempting to call android.telecom.PhoneAccount#createIconDrawable"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 97
    goto :goto_0
.end method

.method private static createIconDrawableMarshmallow(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/contacts/common/compat/PhoneAccountCompat;->getIcon(Landroid/telecom/PhoneAccount;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 80
    .local v0, "accountIcon":Landroid/graphics/drawable/Icon;
    if-nez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIcon(Landroid/telecom/PhoneAccount;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0
.end method
