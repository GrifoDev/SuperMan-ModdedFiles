.class Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;
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

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get0()[Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get0()[Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get0()[Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v3, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onChanged() servicebox individual switches"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->reissueAllPages()V

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->cancelGuideNotification()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get0()[Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxSharePageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChanged() shared package name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setCurrentPage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get0()[Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxPageOrder()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get3(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChanged() page order = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-set0(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get5(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->reissueAllPages()V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get0()[Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get2(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->updateBlackList()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get0()[Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->resetServiceBoxMediaKeyEvent()V

    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxMediaKeyEventFromAod()I

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    sget-object v3, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChanged() media key event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get2(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->pushMediaKeyEvent(I)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;->this$0:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-static {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->-get6(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->resetServiceBoxMediaKeyEvent()V

    goto/16 :goto_0
.end method
