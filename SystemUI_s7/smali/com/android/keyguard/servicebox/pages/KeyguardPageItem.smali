.class public Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
.super Ljava/lang/Object;
.source "KeyguardPageItem.java"


# instance fields
.field private mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

.field private mPackageName:Ljava/lang/String;

.field private mPageRes:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageView(Landroid/content/Context;ZZ)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "pageRes is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    invoke-static {p1, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "page is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {v0, v1, p2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setServiceBoxController(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Z)V

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method
