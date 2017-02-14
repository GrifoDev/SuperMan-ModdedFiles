.class Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;
.super Ljava/lang/Object;
.source "NavigationBarDropDownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClick(): spinner is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->performClick()Z

    return v2
.end method
