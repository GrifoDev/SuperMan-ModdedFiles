.class Lcom/android/systemui/statusbar/phone/AutoTileManager$6;
.super Lcom/android/systemui/qs/SecureSetting;
.source "AutoTileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get5(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    const-string/jumbo v1, "inversion"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get2(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "QsInvertColorsAdded"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$TkQS9JwI9bZlvLqtI6ZgzsrKRiU$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$TkQS9JwI9bZlvLqtI6ZgzsrKRiU$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_AutoTileManager$6_4289()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void
.end method
