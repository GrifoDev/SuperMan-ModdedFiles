.class Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;
.super Ljava/lang/Object;
.source "NavigationBarPressureGaugePreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->semGetForcePressure()F

    move-result v2

    if-eq v0, v6, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "NBPS"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v3, "NavigationBarPressureGaugePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTouch : actionType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  / pressure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-static {v4, v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;IF)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->-wrap1(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;II)V

    return v6
.end method
