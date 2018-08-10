.class public Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "CarrierDemoPasswordDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$Callback;
    }
.end annotation


# instance fields
.field private mMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;Landroid/app/AlertDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->verifyPassword(Landroid/app/AlertDialog;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    :try_start_0
    const-string/jumbo v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->mMessageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CarrierDemoPasswordDF"

    const-string/jumbo v2, "Unable to verify demo mode password"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private verifyPassword(Landroid/app/AlertDialog;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->mMessageDigest:Ljava/security/MessageDigest;

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10401e5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v0, v6, v4, v6}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x33c

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    const/4 v3, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$1;-><init>(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;)V

    const v8, 0x7f121645

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f121644

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f121646

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    const/16 v4, 0x81

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v4, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;-><init>(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v4, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;-><init>(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10104d3

    aput v5, v4, v3

    invoke-virtual {v7, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method
