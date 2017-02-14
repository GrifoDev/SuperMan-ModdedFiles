.class Lcom/android/launcher2/gamehome/GameHomeManager$4;
.super Ljava/lang/Object;
.source "GameHomeManager.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/gamehome/GameHomeManager;->startGameHUN(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gamehome/GameHomeManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/gamehome/GameHomeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/gamehome/GameHomeManager$4;->this$0:Lcom/android/launcher2/gamehome/GameHomeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    # getter for: Lcom/android/launcher2/gamehome/GameHomeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/gamehome/GameHomeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameHome onActivityResult resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    :cond_0
    return-void
.end method
