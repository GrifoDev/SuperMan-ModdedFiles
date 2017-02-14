.class Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;
.super Ljava/lang/Object;
.source "BlueLightFilterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showLocationOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "blue_light_filter_type"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->onClick()V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "blue_light_filter_scheduled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    goto :goto_0
.end method
