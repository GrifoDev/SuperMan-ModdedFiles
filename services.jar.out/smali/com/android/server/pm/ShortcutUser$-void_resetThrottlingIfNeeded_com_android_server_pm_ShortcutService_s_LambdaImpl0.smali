.class final synthetic Lcom/android/server/pm/ShortcutUser$-void_resetThrottlingIfNeeded_com_android_server_pm_ShortcutService_s_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutUser.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_resetThrottlingIfNeeded_com_android_server_pm_ShortcutService_s_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$s:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser$-void_resetThrottlingIfNeeded_com_android_server_pm_ShortcutService_s_LambdaImpl0;->val$s:Lcom/android/server/pm/ShortcutService;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$-void_resetThrottlingIfNeeded_com_android_server_pm_ShortcutService_s_LambdaImpl0;->val$s:Lcom/android/server/pm/ShortcutService;

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutUser;->-com_android_server_pm_ShortcutUser_lambda$2(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
