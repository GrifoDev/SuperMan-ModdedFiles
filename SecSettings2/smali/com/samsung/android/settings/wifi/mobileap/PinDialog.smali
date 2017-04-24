.class public Lcom/samsung/android/settings/wifi/mobileap/PinDialog;
.super Landroid/app/AlertDialog;
.source "PinDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public getPin()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    const v2, 0x7f110840

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040370

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    const v2, 0x7f11083d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Enter Pin from Client"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b1259

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b042c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b10f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/PinDialog;->setView(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
