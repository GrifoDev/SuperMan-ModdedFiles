.class Lcom/android/systemui/statusbar/phone/StatusBar$11;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x1e

    if-ne v1, v0, :cond_0

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NavigationBarForceImmersiveState"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarHideEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "NavigationBarForceImmersiveState"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarHideEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NavigationBarForceImmersiveState"

    invoke-static {v0, v1, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method
