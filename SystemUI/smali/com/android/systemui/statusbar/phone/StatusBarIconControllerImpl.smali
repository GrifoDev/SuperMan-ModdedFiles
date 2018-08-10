.class public Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.source "StatusBarIconControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field private final mIconBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;-><init>([Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->loadDimens()V

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "icon_blacklist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private addSystemIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;

    invoke-direct {v4, v0, v2, v1, p2}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;-><init>(ZILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_4749(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_5703(IILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconExternal(II)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_6550(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_7100(ILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method

.method private loadDimens()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v4

    invoke-virtual {p1, v4, v3, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    iget-object v3, v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  icon views: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;

    invoke-direct {v2, v0, p2}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->loadDimens()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v3, "icon_blacklist"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIcons:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mSlots:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIcon(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeIcon(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->removeIcon(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIcon(I)V

    return-void
.end method

.method public removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExternalIcon(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07067e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIcon(I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addSystemIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_1
.end method

.method public setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    move v5, v4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iput-object p3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v2, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method
