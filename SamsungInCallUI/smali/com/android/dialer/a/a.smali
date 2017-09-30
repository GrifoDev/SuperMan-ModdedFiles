.class public Lcom/android/dialer/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/dialer/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
