.class public Lcom/android/contacts/common/compat/DirectoryCompat;
.super Ljava/lang/Object;
.source "DirectoryCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/android/contacts/common/compat/DirectorySdkCompat;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 30
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static isEnterpriseDirectoryId(J)Z
    .locals 2
    .param p0, "directoryId"    # J

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/DirectorySdkCompat;->isEnterpriseDirectoryId(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInvisibleDirectory(J)Z
    .locals 6
    .param p0, "directoryId"    # J

    .prologue
    const-wide/16 v4, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    sget-boolean v2, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v2, :cond_2

    .line 35
    cmp-long v2, p0, v4

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x3b9aca01

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 38
    :cond_1
    :goto_0
    return v0

    :cond_2
    cmp-long v2, p0, v4

    if-nez v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public static isRemoteDirectoryId(J)Z
    .locals 2
    .param p0, "directoryId"    # J

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/DirectorySdkCompat;->isRemoteDirectoryId(J)Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
