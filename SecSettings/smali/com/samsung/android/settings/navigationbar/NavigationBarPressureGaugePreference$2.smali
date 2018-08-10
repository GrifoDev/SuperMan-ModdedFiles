.class Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$2;
.super Landroid/database/ContentObserver;
.source "NavigationBarPressureGaugePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->registerUserLevelChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;->setMaxPressureLevel(I)V

    return-void
.end method
