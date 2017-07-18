.class public Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;
.super Ljava/lang/Object;
.source "DirectAccessEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    return-void
.end method

.method private showExclusiveDialog()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0242

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0b043d

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02cc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$1;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)V

    const v3, 0x7f0b1518

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$2;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$3;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const v4, 0x7f100291

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "any_screen_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->showExclusiveDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    if-ne v1, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_access"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
