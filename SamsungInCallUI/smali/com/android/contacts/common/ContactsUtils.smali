.class public Lcom/android/contacts/common/ContactsUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactsUtils$UserType;,
        Lcom/android/contacts/common/ContactsUtils$ProviderNames;
    }
.end annotation


# static fields
.field public static final a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/ContactsUtils;->b:I

    invoke-static {}, Landroid/support/v4/os/c;->a()Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/ContactsUtils;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/contacts/common/compat/DirectoryCompat;->c(J)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/contacts/common/compat/ContactsCompat;->a(J)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method
