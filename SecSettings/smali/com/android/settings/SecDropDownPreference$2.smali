.class Lcom/android/settings/SecDropDownPreference$2;
.super Ljava/lang/Object;
.source "SecDropDownPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecDropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SecDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "mute_duration"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get2(Lcom/android/settings/SecDropDownPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v1}, Lcom/android/settings/SecDropDownPreference;->-get2(Lcom/android/settings/SecDropDownPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0493

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get3(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get1(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/settings/SecDropDownPreference;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClick(): spinner is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get1(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0, v3}, Lcom/android/settings/SecDropDownPreference;->-set0(Lcom/android/settings/SecDropDownPreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get3(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get3(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return v3
.end method
