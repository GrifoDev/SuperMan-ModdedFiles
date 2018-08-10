.class public Landroid/app/InternalPresentation;
.super Landroid/app/Presentation;
.source "InternalPresentation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/InternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    const-string/jumbo v0, "InternalPresentation"

    const-string/jumbo v1, "Creating InternalPresentation 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    const-string/jumbo v0, "InternalPresentation"

    const-string/jumbo v1, "Creating InternalPresentation 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/InternalPresentation;->setInternalPresentationFlag()V

    return-void
.end method

.method private setInternalPresentationFlag()V
    .locals 3

    const-string/jumbo v1, "InternalPresentation"

    const-string/jumbo v2, "setInternalPresentationFlag"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/InternalPresentation;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/InternalPresentation;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v1, p0, Landroid/app/InternalPresentation;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
