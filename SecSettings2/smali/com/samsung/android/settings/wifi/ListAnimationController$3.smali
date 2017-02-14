.class Lcom/samsung/android/settings/wifi/ListAnimationController$3;
.super Ljava/lang/Object;
.source "ListAnimationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/ListAnimationController;->initController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get4(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$3;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get4(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;->onAddNetworkPressed()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "onClick - listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
