.class Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagers$KeyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->regReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownTime:J

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/String;

    return-object v1

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "Unknown"

    goto :goto_1
.end method

.method private homeApplication(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private unKillApps(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "com.android.providers.applications"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "com.sec.android.app.clockpackage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.wubydax.romcontrol"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.server.telecom"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.incallui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DoubleTapLauncherapp()V
    .locals 10

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "aryamod_doubletap_home_app"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "##"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v1, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x14000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public DoubleTaphomeapp()V
    .locals 10

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "aryamod_doubletap_home_app"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "##"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v1, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x14000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public LongPressbackapp()V
    .locals 10

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "aryamod_longpress_back_app"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "##"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v1, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x14000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public LongPresshomeapp()V
    .locals 10

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "aryamod_longpress_home_app"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "##"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v1, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x14000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public LongPressmenuapp()V
    .locals 10

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "aryamod_longpress_menu_app"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "##"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v1, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x14000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public doScreenShot()V
    .locals 10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ScreenShot"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public expandStatusBar()V
    .locals 14

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    const-string/jumbo v4, "expandNotificationsPanel"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v4, "expand"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getMobileDataStatus()Z
    .locals 10

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v3

    const-string v9, "connectivity"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :try_start_0
    const-string/jumbo v9, "getMobileDataEnabled"

    invoke-virtual {v5, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Boolean;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    return v9

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isBlueToothOn()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public killApp()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v0

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v11

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->unKillApps(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v5}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->homeApplication(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v7, "Stopped package "

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "Killed: "

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget v0, v9, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/app/IActivityManager;->removeTask(II)Z

    const/4 v1, -0x2

    invoke-interface {v3, v5, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string/jumbo v2, "White listed: "

    goto :goto_0

    :cond_1
    goto :goto_1

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    invoke-static {v11, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public killall()V
    .locals 15

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "AryaMod_MemClean_array"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v11, "\\|"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v7, v0, v2

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v11

    const-string v13, "activity"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v8, v11, v12

    iget v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x12c

    if-le v11, v12, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v11

    const-string v13, "activity"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    invoke-virtual {v11, v8}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "Cleaning Up Memory"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PhoneWindowManagers$KeyPolicy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "action"

    const/16 v2, 0x3e7

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendSleepEvent()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->powerMenu()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendBackKeyEvent()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendHomeKeyEvent()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendRecentKeyEvent()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendMenuKeyEvent()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendVolumeUpKeyEvent()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendVolumeDownKeyEvent()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendCalllogKeyEvent()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendSearchKeyEvent()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->setAudioMode()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->killApp()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->setTorch()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->doScreenShot()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->expandStatusBar()V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->toggleWifi()V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->toggleMobileData()V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->toggleBlueTooth()V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->LongPressmenuapp()V

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->LongPressbackapp()V

    goto :goto_0

    :pswitch_14
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->LongPresshomeapp()V

    goto :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->DoubleTaphomeapp()V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->DoubleTapLauncherapp()V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->killall()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public powerMenu()V
    .locals 10

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendEvent(II)V

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public sendBackKeyEvent()V
    .locals 15

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v3, v13

    if-ge v14, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    aget v5, v13, v14

    const/4 v6, 0x4

    const/4 v9, -0x1

    const v11, 0x10000008

    const/16 v12, 0x101

    move-wide v3, v1

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public sendCalllogKeyEvent()V
    .locals 15

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v3, v13

    if-ge v14, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    aget v5, v13, v14

    const v6, 0x5

    const/4 v9, -0x1

    const v11, 0x10000008

    const/16 v12, 0x101

    move-wide v3, v1

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method sendEvent(II)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->sendEvent(IIJ)V

    return-void
.end method

.method sendEvent(IIJ)V
    .locals 13

    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->mDownTime:J

    const/16 v6, 0x1a

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v3, p2, 0x8

    or-int/lit8 v11, v3, 0x40

    const/16 v12, 0x101

    move-wide/from16 v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public sendHomeKeyEvent()V
    .locals 15

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v3, v13

    if-ge v14, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    aget v5, v13, v14

    const/4 v6, 0x3

    const/4 v9, -0x1

    const v11, 0x10000008

    const/16 v12, 0x101

    move-wide v3, v1

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public sendMenuKeyEvent()V
    .locals 15

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v3, v13

    if-ge v14, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    aget v5, v13, v14

    const/16 v6, 0x52

    const/4 v9, -0x1

    const v11, 0x10000008

    const/16 v12, 0x101

    move-wide v3, v1

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public sendRecentKeyEvent()V
    .locals 15

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v3, v13

    if-ge v14, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    aget v5, v13, v14

    const/16 v6, 0xbb

    const/4 v9, -0x1

    const v11, 0x10000008

    const/16 v12, 0x101

    move-wide v3, v1

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public sendSearchKeyEvent()V
    .locals 15

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v3, v13

    if-ge v14, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    aget v5, v13, v14

    const/16 v6, 0x54

    const/4 v9, -0x1

    const v11, 0x10000008

    const/16 v12, 0x101

    move-wide v3, v1

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public sendSleepEvent()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method

.method public sendVolumeDownKeyEvent()V
    .locals 15

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v3, v13

    if-ge v14, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    aget v5, v13, v14

    const/16 v6, 0x19

    const/4 v9, -0x1

    const v11, 0x10000008

    const/16 v12, 0x101

    move-wide v3, v1

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public sendVolumeUpKeyEvent()V
    .locals 15

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v3, v13

    if-ge v14, v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    aget v5, v13, v14

    const/16 v6, 0x18

    const/4 v9, -0x1

    const v11, 0x10000008

    const/16 v12, 0x101

    move-wide v3, v1

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public setAudioMode()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTorch()V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # invokes: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->getTorchStatus()Z
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$1000(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "com.samsung.intent.action.ASSISTIVELIGHT_OFF"

    :goto_0
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v3

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    const-string v3, "com.samsung.intent.action.ASSISTIVELIGHT_ON"

    goto :goto_0
.end method

.method public toggleBlueTooth()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->isBlueToothOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    const-string/jumbo v2, "Blutooth Switched OFF"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const-string/jumbo v2, "Bluetooth Switched ON"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public toggleMobileData()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setMobileDataEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->getMobileDataStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "Mobile Data Disabled"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "Mobile Data Enabled"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toggleWifi()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;->this$0:Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;

    # getter for: Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v2, "Wi-Fi Disconnected"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v2, "Wi-Fi Connected"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
