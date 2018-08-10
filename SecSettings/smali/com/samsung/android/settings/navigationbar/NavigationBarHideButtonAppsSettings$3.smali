.class Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;
.super Ljava/lang/Object;
.source "NavigationBarHideButtonAppsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->-wrap2(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V

    return-void
.end method
