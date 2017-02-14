.class Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;
.super Landroid/database/ContentObserver;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_detachment_option"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
