.class public final Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# static fields
.field private static sService:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getService()Lcom/android/server/desktopmode/DesktopModeService;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap10(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap11(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService;)V

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v0, "desktopmode"

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap12(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap13(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap14(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_0
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->sService:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap15(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_0
    return-void
.end method
