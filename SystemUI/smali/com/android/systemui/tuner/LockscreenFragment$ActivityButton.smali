.class Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;
.super Ljava/lang/Object;
.source "LockscreenFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityButton"
.end annotation


# instance fields
.field private final mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIntent:Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    invoke-direct {v1}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iput-boolean v5, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    new-instance v2, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v3, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v3, v3, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v5, v5, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    iput-object v2, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
