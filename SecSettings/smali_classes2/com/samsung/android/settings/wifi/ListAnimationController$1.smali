.class Lcom/samsung/android/settings/wifi/ListAnimationController$1;
.super Ljava/lang/Object;
.source "ListAnimationController.java"

# interfaces
.implements Landroid/widget/SemExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/ListAnimationController;
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get1(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChild(II)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get2(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get2(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;->onItemClick(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const-string/jumbo v1, "WifiSettings.VI"

    const-string/jumbo v2, "onClick - listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
