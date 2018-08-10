.class Lcom/android/server/desktopmode/DesktopModeService$7;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field final synthetic val$config:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/res/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$7;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$7;->val$config:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$7;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$7;->val$config:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap8(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/res/Configuration;)V

    return-void
.end method
