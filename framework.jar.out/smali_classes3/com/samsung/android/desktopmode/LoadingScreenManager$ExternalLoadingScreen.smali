.class Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;
.super Landroid/app/Presentation;
.source "LoadingScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/LoadingScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalLoadingScreen"
.end annotation


# instance fields
.field final mWindow:Landroid/view/Window;

.field final synthetic this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktopmode/LoadingScreenManager;Landroid/content/Context;Landroid/view/Display;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/desktopmode/LoadingScreenManager;
    .param p2, "outerContext"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/view/Display;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;->this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    .line 321
    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 322
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;->mWindow:Landroid/view/Window;

    .line 323
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;->mWindow:Landroid/view/Window;

    sget v1, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 320
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$ExternalLoadingScreen;->mWindow:Landroid/view/Window;

    const/16 v1, 0x8b6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 329
    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 327
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Presentation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string/jumbo v1, " display="

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string/jumbo v1, " isShowing="

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string/jumbo v1, "\n"

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
