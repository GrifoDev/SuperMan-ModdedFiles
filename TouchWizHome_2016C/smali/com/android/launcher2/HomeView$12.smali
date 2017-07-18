.class Lcom/android/launcher2/HomeView$12;
.super Landroid/database/ContentObserver;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v2}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.cocktail.action.CHANGE_CALL_ITEM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
