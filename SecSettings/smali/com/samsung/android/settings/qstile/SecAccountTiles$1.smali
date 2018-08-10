.class Lcom/samsung/android/settings/qstile/SecAccountTiles$1;
.super Ljava/lang/Object;
.source "SecAccountTiles.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/qstile/SecAccountTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-static {v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->-get0(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-static {v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->-get0(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecAccountTiles"

    const-string/jumbo v1, "onDesktopModeChanged(): dismiss the dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-static {v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->-get0(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
