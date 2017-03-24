.class Lcom/android/keyguard/util/ShortcutManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ShortcutManager.java"


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

    iput-object p1, p0, Lcom/android/keyguard/util/ShortcutManager$2;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    const-string/jumbo v0, "ShortcutManager"

    const-string/jumbo v1, "recieve onBootCompleted via updateMonitorCallback, update Shortcuts"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager$2;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/ShortcutManager$2;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    return-void
.end method
