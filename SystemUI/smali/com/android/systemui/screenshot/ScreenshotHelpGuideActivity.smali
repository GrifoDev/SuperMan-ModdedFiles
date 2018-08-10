.class public Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;
.super Landroid/app/Activity;
.source "ScreenshotHelpGuideActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showHelpGuideDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f13028b

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f120a15

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0192

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->showHelpGuideDialog()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->setVisible(Z)V

    return-void
.end method
