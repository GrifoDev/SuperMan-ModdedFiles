.class Lcom/android/systemui/volume/ZenModePanel$2$1;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel$2;->onSelected(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/ZenModePanel$2;

.field final synthetic val$realConditionId:Landroid/net/Uri;

.field final synthetic val$zen:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel$2;ILandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$2$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$2;

    iput p2, p0, Lcom/android/systemui/volume/ZenModePanel$2$1;->val$zen:I

    iput-object p3, p0, Lcom/android/systemui/volume/ZenModePanel$2$1;->val$realConditionId:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$2$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$2;

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get5(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel$2$1;->val$zen:I

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$2$1;->val$realConditionId:Landroid/net/Uri;

    const-string/jumbo v3, "ZenModePanel.selectZen"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$2$1;->val$zen:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$2$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$2;

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$2;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->-get4(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "DndFavoriteZen"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$2$1;->val$zen:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
