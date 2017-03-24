.class public Lcom/android/systemui/qs/QSFooter;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFooter$1;,
        Lcom/android/systemui/qs/QSFooter$2;,
        Lcom/android/systemui/qs/QSFooter$Callback;,
        Lcom/android/systemui/qs/QSFooter$H;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private mFooterIconId:I

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextId:I

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsIconVisible:Z

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;

.field private final mUpdateIcon:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFooter;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSFooter;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSFooter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSFooter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleClick()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleRefreshState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "QSFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/QSFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSFooter$Callback;-><init>(Lcom/android/systemui/qs/QSFooter;Lcom/android/systemui/qs/QSFooter$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    new-instance v0, Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$1;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateIcon:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/QSFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$2;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040111

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f130301

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f130302

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    const v0, 0x7f0201de

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    iput-object p2, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private createDialog()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileVpnName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v5

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v6

    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v7, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSFooter;->getTitle(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setTitle(I)V

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSFooter;->getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QSFooter;->getPositiveButton(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v0, v8, v7, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x2

    invoke-virtual {v0, v8, v7, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method private getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6

    const v5, 0x7f0f04aa

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p3, v1, v3

    const v2, 0x7f0f04b4

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p3, :cond_4

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p4, v1, v3

    aput-object p3, v1, v4

    const v2, 0x7f0f04b3

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz p6, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0f04b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    const v2, 0x7f0f04b0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p4, v1, v3

    const v2, 0x7f0f04b2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    if-eqz p2, :cond_6

    if-eqz p5, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v0
.end method

.method private getPositiveButton(Z)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x104000a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0f0398

    goto :goto_0
.end method

.method private getSettingsButton()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0f024b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitle(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0f04a5

    return v0

    :cond_0
    const v0, 0x7f0f04a7

    return v0
.end method

.method private handleClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->collapsePanels()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->createDialog()V

    return-void
.end method

.method private handleRefreshState()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0f04a1

    iput v2, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    if-eqz v1, :cond_2

    const v2, 0x7f0f04a4

    :goto_1
    iput v2, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    if-eqz v1, :cond_3

    const v0, 0x7f0201af

    :goto_2
    iget v2, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIconId:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    goto :goto_0

    :cond_2
    const v2, 0x7f0f04a3

    goto :goto_1

    :cond_3
    const v0, 0x7f0201de

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.VPN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f0d0205

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public refreshState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v0, Lcom/android/systemui/qs/QSFooter$H;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSFooter$H;-><init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSFooter$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    goto :goto_0
.end method
