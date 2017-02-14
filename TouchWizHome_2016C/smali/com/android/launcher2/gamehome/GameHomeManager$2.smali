.class Lcom/android/launcher2/gamehome/GameHomeManager$2;
.super Landroid/database/ContentObserver;
.source "GameHomeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gamehome/GameHomeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gamehome/GameHomeManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/gamehome/GameHomeManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/gamehome/GameHomeManager$2;->this$0:Lcom/android/launcher2/gamehome/GameHomeManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    # getter for: Lcom/android/launcher2/gamehome/GameHomeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/gamehome/GameHomeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game home setting provider changed : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/gamehome/GameHomeManager$2;->this$0:Lcom/android/launcher2/gamehome/GameHomeManager;

    invoke-virtual {v0}, Lcom/android/launcher2/gamehome/GameHomeManager;->updateGameAppsVisibility()V

    return-void
.end method
