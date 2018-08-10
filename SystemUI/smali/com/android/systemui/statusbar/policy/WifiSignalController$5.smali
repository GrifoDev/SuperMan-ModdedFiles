.class Lcom/android/systemui/statusbar/policy/WifiSignalController$5;
.super Landroid/database/ContentObserver;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalController;->configureScoringGating()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "network_scoring_ui_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->-set2(Lcom/android/systemui/statusbar/policy/WifiSignalController;Z)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
