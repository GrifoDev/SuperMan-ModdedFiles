.class public Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.super Ljava/lang/Object;
.source "ButtonDispatcher.java"


# instance fields
.field private mAlpha:Ljava/lang/Integer;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentView:Landroid/view/View;

.field private mDarkIntensity:Ljava/lang/Float;

.field private final mId:I

.field private mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickable:Ljava/lang/Boolean;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mVertical:Z

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->abortCurrentGesture()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setDarkIntensity(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    instance-of v0, p1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setVertical(Z)V

    :cond_5
    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setDarkIntensity(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCarMode(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setCarMode(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentView(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setDarkIntensity(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVertical(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;->setVertical(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
