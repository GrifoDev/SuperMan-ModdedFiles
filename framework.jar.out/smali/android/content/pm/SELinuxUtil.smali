.class public final Landroid/content/pm/SELinuxUtil;
.super Ljava/lang/Object;
.source "SELinuxUtil.java"


# static fields
.field public static final COMPLETE_STR:Ljava/lang/String; = ":complete"

.field private static final INSTANT_APP_STR:Ljava/lang/String; = ":ephemeralapp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assignSeinfoUser(Landroid/content/pm/PackageUserState;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ":ephemeralapp:complete"

    return-object v0

    :cond_0
    const-string/jumbo v0, ":complete"

    return-object v0
.end method
