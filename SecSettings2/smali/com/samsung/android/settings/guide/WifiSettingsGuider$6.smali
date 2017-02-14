.class Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-static {v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-get0(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-get1()Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    iget-object v0, v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-static {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-get0(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
