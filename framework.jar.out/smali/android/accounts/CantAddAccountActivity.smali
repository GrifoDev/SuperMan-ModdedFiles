.class public Landroid/accounts/CantAddAccountActivity;
.super Landroid/app/Activity;
.source "CantAddAccountActivity.java"


# static fields
.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "android.accounts.extra.ERROR_CODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/accounts/CantAddAccountActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1090036

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->setContentView(I)V

    return-void
.end method
