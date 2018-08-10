.class Landroid/support/v4/media/MediaBrowserServiceCompatApi24;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi24.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;
    }
.end annotation


# static fields
.field private static sResultFlags:Ljava/lang/reflect/Field;


# direct methods
.method static synthetic -get0()Ljava/lang/reflect/Field;
    .locals 1

    sget-object v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v1, Landroid/service/media/MediaBrowserService$Result;

    const-string/jumbo v2, "mFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;

    sget-object v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MBSCompatApi24"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)V

    return-object v0
.end method
