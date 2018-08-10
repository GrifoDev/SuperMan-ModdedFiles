.class Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$1;
.super Landroid/database/ContentObserver;
.source "NavigationBarHardPressSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_force_touch_enable"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->SetScreen()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
