.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;
.source "DeskStatusBarIconControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mNeedToUpdateSlotInfo:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const v1, 0x10409d8

    const v2, 0x7f120ab1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x10409d6

    const v2, 0x7f120aaf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mNeedToUpdateSlotInfo:[[I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateDexToolTipDescription(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x10409d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f120ab1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContentDescription:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method


# virtual methods
.method public setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContentDescription:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->updateDexToolTipDescription(Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContentDescription:Ljava/lang/CharSequence;

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0
.end method

.method public updateDexToolTipDescription()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mNeedToUpdateSlotInfo:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mNeedToUpdateSlotInfo:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->mNeedToUpdateSlotInfo:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
