.class final Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
.super Landroid/app/Presentation;
.source "KeyguardDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyguardPresentation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;
    }
.end annotation


# static fields
.field private static sPresentationInstance:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;


# instance fields
.field private mClock:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mMarginLeft:I

.field private mMarginTop:I

.field mMoveTextRunnable:Ljava/lang/Runnable;

.field private mUsableHeight:I

.field private mUsableWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->sPresentationInstance:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/Display;I)Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->sPresentationInstance:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->sPresentationInstance:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->dismiss()V

    sput-object v1, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->sPresentationInstance:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->sPresentationInstance:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    sget-object v0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->sPresentationInstance:Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_presentation:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->setContentView(I)V

    sget v1, Lcom/android/keyguard/R$id;->clock:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Presentation;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
