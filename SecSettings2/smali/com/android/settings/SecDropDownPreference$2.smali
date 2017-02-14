.class Lcom/android/settings/SecDropDownPreference$2;
.super Ljava/lang/Object;
.source "SecDropDownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get2(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get1(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/SecDropDownPreference;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClick(): spinner is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get1(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get2(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/SecDropDownPreference$2;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v0}, Lcom/android/settings/SecDropDownPreference;->-get2(Lcom/android/settings/SecDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return v2
.end method
