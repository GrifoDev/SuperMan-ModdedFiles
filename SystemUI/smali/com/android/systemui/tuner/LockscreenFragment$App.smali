.class Lcom/android/systemui/tuner/LockscreenFragment$App;
.super Lcom/android/systemui/tuner/LockscreenFragment$Item;
.source "LockscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "App"
.end annotation


# instance fields
.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/tuner/LockscreenFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private final mInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method static synthetic lambda$-com_android_systemui_tuner_LockscreenFragment$App_8586(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->remItem(Lcom/android/systemui/tuner/LockscreenFragment$Item;)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExpando()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mExpanded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_tuner_LockscreenFragment$App_8491(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->addItem(Lcom/android/systemui/tuner/LockscreenFragment$Item;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V

    return-void
.end method

.method public toggleExpando(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mChildren:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$App;->mChildren:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE;

    invoke-direct {v1, p1}, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0
.end method
