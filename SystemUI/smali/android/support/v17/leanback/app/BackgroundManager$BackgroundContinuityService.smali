.class Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundContinuityService"
.end annotation


# static fields
.field private static DEBUG:Z

.field private static sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;


# instance fields
.field private mColor:I

.field private mCount:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastThemeDrawableId:I

.field private mLastThemeDrawableState:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->DEBUG:Z

    new-instance v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->sService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableState:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableId:I

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableState:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    sget-boolean v2, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BackgroundContinuity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got cached theme drawable state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-boolean v2, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BackgroundContinuity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loaded theme drawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableState:Ljava/lang/ref/WeakReference;

    iput p2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mLastThemeDrawableId:I

    :cond_3
    return-object v0
.end method

.method public unref()V
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t unref, count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->mCount:I

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BackgroundContinuity"

    const-string/jumbo v1, "mCount is zero, resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->reset()V

    :cond_2
    return-void
.end method
