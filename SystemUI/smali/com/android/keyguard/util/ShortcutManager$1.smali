.class Lcom/android/keyguard/util/ShortcutManager$1;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/util/ShortcutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/ShortcutManager$1;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "lock_application_shortcut"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager$1;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    return-void

    :cond_0
    return-void
.end method
