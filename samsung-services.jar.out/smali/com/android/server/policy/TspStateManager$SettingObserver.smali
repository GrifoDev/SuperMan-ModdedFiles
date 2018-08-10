.class Lcom/android/server/policy/TspStateManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TspStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/TspStateManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string/jumbo v0, "TspStateManagerInternal"

    const-string/jumbo v1, "onChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v0}, Lcom/android/server/policy/TspStateManager;->-wrap2(Lcom/android/server/policy/TspStateManager;)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v0}, Lcom/android/server/policy/TspStateManager;->-wrap3(Lcom/android/server/policy/TspStateManager;)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    return-void
.end method
