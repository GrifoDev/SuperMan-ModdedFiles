.class public Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;
.super Ljava/lang/Object;
.source "NavBarRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;,
        Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDarkIntensity:Ljava/lang/Float;

.field private mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;

.field private mViewList:[Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    return-void
.end method

.method private applyRemoteIconTint(Landroid/view/View;)V
    .locals 6

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    const v2, 0x7f060112

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x3f733333    # 0.95f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->sInstance:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->sInstance:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    const-string/jumbo v0, "NavBarRemoteViewManager"

    const-string/jumbo v1, "*** NavBarRemoteViewManager create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->sInstance:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    return-object v0
.end method


# virtual methods
.method public applyDarkIntensity(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public getDarkIntensity()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRightRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "NavBarRemoteViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNavigationBarShortcut() requestClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->-set0(Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    aput-object v4, v1, v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;-><init>(Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->applyRemoteIconTint(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;->updateContainer()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setRemoteViewCallback(Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;)V
    .locals 3

    const-string/jumbo v1, "NavBarRemoteViewManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteViewCallback() is set up to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "not null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    return-void

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method
