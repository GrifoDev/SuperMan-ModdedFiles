.class Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreensaverTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/qstile/ScreensaverTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreensaverChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/qstile/ScreensaverTile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/qstile/ScreensaverTile;Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;-><init>(Lcom/samsung/android/settings/qstile/ScreensaverTile;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "isChecked"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "id"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-set0(I)I

    invoke-static {}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-get3()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-get2()I

    move-result v4

    if-eq v3, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-virtual {v3}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->semUpdateDetailView()V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-static {v3}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-get1(Lcom/samsung/android/settings/qstile/ScreensaverTile;)I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-static {v3}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-get0(Lcom/samsung/android/settings/qstile/ScreensaverTile;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-boolean v5, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-static {}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-get2()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-static {v3}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-get0(Lcom/samsung/android/settings/qstile/ScreensaverTile;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-static {v3}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-get0(Lcom/samsung/android/settings/qstile/ScreensaverTile;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/ScreensaverTile$ScreensaverChangedReceiver;->this$0:Lcom/samsung/android/settings/qstile/ScreensaverTile;

    invoke-static {v3}, Lcom/samsung/android/settings/qstile/ScreensaverTile;->-get0(Lcom/samsung/android/settings/qstile/ScreensaverTile;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method
