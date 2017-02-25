.class Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SamsungWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object v1, p1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/SamsungWindowManagerService;->-get0(Lcom/android/server/wm/SamsungWindowManagerService;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->-get0(Lcom/android/server/wm/SamsungWindowManagerService;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-static {v0, p3}, Lcom/android/server/wm/SamsungWindowManagerService;->-wrap2(Lcom/android/server/wm/SamsungWindowManagerService;I)V

    :cond_1
    return-void
.end method
