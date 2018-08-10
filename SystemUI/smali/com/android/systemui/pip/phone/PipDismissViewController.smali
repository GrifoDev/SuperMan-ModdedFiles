.class public Lcom/android/systemui/pip/phone/PipDismissViewController;
.super Ljava/lang/Object;
.source "PipDismissViewController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/phone/PipDismissViewController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public createDismissTarget()V
    .locals 0

    return-void
.end method

.method public destroyDismissTarget()V
    .locals 0

    return-void
.end method

.method public showDismissTarget()V
    .locals 0

    return-void
.end method
