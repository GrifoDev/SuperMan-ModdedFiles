.class Lcom/samsung/android/settings/location/LocationDropDownPreference$2;
.super Ljava/lang/Object;
.source "LocationDropDownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/LocationDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;->this$0:Lcom/samsung/android/settings/location/LocationDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;->this$0:Lcom/samsung/android/settings/location/LocationDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->-get0(Lcom/samsung/android/settings/location/LocationDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;->this$0:Lcom/samsung/android/settings/location/LocationDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->-get0(Lcom/samsung/android/settings/location/LocationDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationDropDownPreference$2;->this$0:Lcom/samsung/android/settings/location/LocationDropDownPreference;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->-set0(Lcom/samsung/android/settings/location/LocationDropDownPreference;Z)Z

    return v2
.end method
