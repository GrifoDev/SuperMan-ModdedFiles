.class public final Landroid/support/v4/app/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/x$c;,
        Landroid/support/v4/app/x$b;,
        Landroid/support/v4/app/x$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/app/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/x$c;

    invoke-direct {v0}, Landroid/support/v4/app/x$c;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$a;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/app/x$b;

    invoke-direct {v0}, Landroid/support/v4/app/x$b;-><init>()V

    sput-object v0, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$a;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/x;->a(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/x;->a:Landroid/support/v4/app/x$a;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/app/x$a;->a(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
