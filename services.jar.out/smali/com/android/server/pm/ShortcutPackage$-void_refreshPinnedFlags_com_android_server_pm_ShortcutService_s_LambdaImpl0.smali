.class final synthetic Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags_com_android_server_pm_ShortcutService_s_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutPackage.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_refreshPinnedFlags_com_android_server_pm_ShortcutService_s_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags_com_android_server_pm_ShortcutService_s_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutPackage;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$-void_refreshPinnedFlags_com_android_server_pm_ShortcutService_s_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutPackage;

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->-com_android_server_pm_ShortcutPackage_lambda$1(Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method
