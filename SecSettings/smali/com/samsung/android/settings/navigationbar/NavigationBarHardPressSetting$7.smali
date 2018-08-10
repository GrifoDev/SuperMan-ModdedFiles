.class Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$7;
.super Ljava/lang/Object;
.source "NavigationBarHardPressSetting.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$7;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string/jumbo v1, "NavigationBarHardPressSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged - mPressureTestUi "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$7;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "visible"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$7;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$7;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap2(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "invisible"

    goto :goto_0
.end method
