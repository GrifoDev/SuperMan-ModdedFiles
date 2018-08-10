.class public Lcom/android/settings/nfc/HowItWorks;
.super Landroid/app/Activity;
.source "HowItWorks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d01b2

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/HowItWorks;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/HowItWorks;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f0a05a6

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/HowItWorks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/nfc/HowItWorks$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/HowItWorks$1;-><init>(Lcom/android/settings/nfc/HowItWorks;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/nfc/HowItWorks;->finish()V

    const/4 v0, 0x1

    return v0
.end method
