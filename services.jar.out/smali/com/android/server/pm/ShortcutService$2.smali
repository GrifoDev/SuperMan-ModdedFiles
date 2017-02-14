.class Lcom/android/server/pm/ShortcutService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$2;->getChangingUserId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->-wrap1(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$2;->getChangingUserId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->-wrap2(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$2;->getChangingUserId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->-wrap3(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$2;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService$2;->getChangingUserId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->-wrap4(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    return-void
.end method
