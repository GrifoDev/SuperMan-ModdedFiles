.class Lcom/android/settings/fuelgauge/BatterySaverPreference$2;
.super Ljava/lang/Object;
.source "BatterySaverPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatterySaverPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference$2;->this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference$2;->this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference$2;->this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference$2;->this$0:Lcom/android/settings/fuelgauge/BatterySaverPreference;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
