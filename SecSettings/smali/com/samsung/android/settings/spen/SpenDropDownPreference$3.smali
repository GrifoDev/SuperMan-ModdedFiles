.class Lcom/samsung/android/settings/spen/SpenDropDownPreference$3;
.super Ljava/lang/Object;
.source "SpenDropDownPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/SpenDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/SpenDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$3;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$3;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->-get2(Lcom/samsung/android/settings/spen/SpenDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$3;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->-get1(Lcom/samsung/android/settings/spen/SpenDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClick(): spinner is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$3;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->-get1(Lcom/samsung/android/settings/spen/SpenDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$3;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->-get2(Lcom/samsung/android/settings/spen/SpenDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$3;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->-get2(Lcom/samsung/android/settings/spen/SpenDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    invoke-static {}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
