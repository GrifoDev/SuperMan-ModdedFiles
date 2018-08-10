.class Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;
.super Ljava/lang/Object;
.source "NavigationBarDropDownPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


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
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onClick(): spinner is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception while click spinner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
