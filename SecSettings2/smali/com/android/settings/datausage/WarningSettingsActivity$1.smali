.class Lcom/android/settings/datausage/WarningSettingsActivity$1;
.super Ljava/lang/Object;
.source "WarningSettingsActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/WarningSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/WarningSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/WarningSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WarningSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkedId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get8(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne p2, v2, :cond_1

    const-string/jumbo v2, "WarningSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWarningOff :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get8(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->-wrap0(Lcom/android/settings/datausage/WarningSettingsActivity;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne p2, v2, :cond_2

    const-string/jumbo v2, "WarningSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWarning40 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get3(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne p2, v2, :cond_3

    const-string/jumbo v2, "WarningSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWarning50 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get8(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v7

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get4(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne p2, v2, :cond_4

    const-string/jumbo v2, "WarningSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWarning60 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get8(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne p2, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v9

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v9

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get6(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne p2, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get7(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne p2, v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get1(Lcom/android/settings/datausage/WarningSettingsActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne p2, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v3, v1, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
