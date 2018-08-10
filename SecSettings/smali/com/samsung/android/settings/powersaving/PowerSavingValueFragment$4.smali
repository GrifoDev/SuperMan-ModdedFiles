.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;
.super Ljava/lang/Object;
.source "PowerSavingValueFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initSeekbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get18(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "PowerSavingValueFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PSM onPreferenceChange(screen): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get18(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(IZ)V

    const-string/jumbo v1, "screen_resolution_state"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setCustomPSMValue(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get8(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get11(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get8(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get11(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isCustomValueChanged(Landroid/content/Context;I)Z

    move-result v1

    :goto_0
    invoke-static {v3, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get8(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get17(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-get14(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/android/settings/Utils;->sendSmartManagerEventWithDetailLog(Landroid/content/Context;III)V

    :cond_0
    return v2

    :cond_1
    move v1, v2

    goto :goto_0
.end method
