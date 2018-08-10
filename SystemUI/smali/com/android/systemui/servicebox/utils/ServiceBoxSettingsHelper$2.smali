.class Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;
.super Ljava/lang/Object;
.source "ServiceBoxSettingsHelper.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onChanged() white wallpaper info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->reissueAllPages()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get1()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onChanged() each mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->reissueAllPages()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$2;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->cancelGuideNotification()V

    goto :goto_0
.end method
