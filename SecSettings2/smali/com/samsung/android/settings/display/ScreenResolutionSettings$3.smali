.class Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;
.super Ljava/lang/Object;
.source "ScreenResolutionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenResolutionSettings;->initswitchBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get0(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v4

    if-eq v1, v4, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-set0(Lcom/samsung/android/settings/display/ScreenResolutionSettings;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get3(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->-get0(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZ)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
