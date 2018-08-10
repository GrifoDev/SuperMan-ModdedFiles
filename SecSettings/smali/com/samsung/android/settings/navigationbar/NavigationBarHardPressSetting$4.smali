.class Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$4;
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

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string/jumbo v0, "NavigationBarHardPressSetting"

    const-string/jumbo v1, "mOneHandAnyScreenEnabledObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Z

    :cond_0
    return-void
.end method
