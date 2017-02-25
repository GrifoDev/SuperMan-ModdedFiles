.class Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager$2;
.super Ljava/lang/Object;
.source "CocktailBarShutdownManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;->reboot(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager$2;->this$0:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager$2;->this$0:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;->-get0(Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "GlobalActions restart"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
