.class Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;
.super Ljava/lang/Object;
.source "WarningSettingsGraceActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/WarningSettingsGraceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSeekBarChangeListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;-><init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 13

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b013e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0140

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v7, v4}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-set0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;I)I

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const/4 v5, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set_data_limit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "max"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "max"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :try_start_0
    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_data_limit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v11}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42200000    # 40.0f

    add-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    mul-float v1, v9, v10

    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v9, "0.00"

    invoke-direct {v2, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v10, v1

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v9

    add-int/lit8 v6, v9, 0x28

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get7(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get4(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06006c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get1(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v10}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06006c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v9}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get8(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    const v12, 0x7f12070a

    invoke-virtual {v11, v12}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v5, "max"

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-set0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;I)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data_warning_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v3}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v2}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v4}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$OnSeekBarChangeListenerImp;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v2}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-wrap0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V

    return-void
.end method
