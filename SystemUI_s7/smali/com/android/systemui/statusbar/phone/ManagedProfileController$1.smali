.class Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;
.super Landroid/content/BroadcastReceiver;
.source "ManagedProfileController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ManagedProfileController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->-wrap0(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->-get0(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
