.class public Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ActiveKeySettingDialog.java"


# instance fields
.field mProceedAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d007e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1200d2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v1
.end method

.method private showProceedDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1200d3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$1;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;)V

    const v3, 0x7f12188c

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$2;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;)V

    const v3, 0x7f121950

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog$3;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->mProceedAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->mProceedAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->showProceedDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettingDialog;->setupAlert()V

    return-void
.end method
