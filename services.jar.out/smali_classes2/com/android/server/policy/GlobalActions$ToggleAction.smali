.class abstract Lcom/android/server/policy/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field mLayoutId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput p1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    iput p2, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    iput p3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    iput p4, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    iput p5, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x109006a

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mLayoutId:I

    :goto_0
    return-void

    :cond_1
    const v0, 0x109006c

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mLayoutId:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const v0, 0x109006b

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mLayoutId:I

    goto :goto_0

    :cond_4
    const v0, 0x109006d

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mLayoutId:I

    goto :goto_0
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeStateFromPress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 11

    const v10, -0x777778

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->willCreate()V

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_0
    const v7, 0x109006a

    invoke-virtual {p4, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    :goto_0
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x10203d7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x10203d9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    if-eqz v3, :cond_1

    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez v0, :cond_1

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v7, v8, :cond_c

    :cond_2
    const/4 v4, 0x1

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v4, :cond_d

    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_2
    invoke-virtual {p1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz v4, :cond_e

    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v4, :cond_f

    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez v0, :cond_4

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    invoke-virtual {v6, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz v0, :cond_10

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_5
    :goto_5
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v3, :cond_6

    const-string/jumbo v7, "#FF000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    if-eqz v5, :cond_7

    const-string/jumbo v7, "#6B6F72"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    return-object v6

    :cond_8
    const v7, 0x109006c

    invoke-virtual {p4, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const v7, 0x109006b

    invoke-virtual {p4, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    :cond_b
    const v7, 0x109006d

    invoke-virtual {p4, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_d
    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    goto/16 :goto_2

    :cond_e
    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    goto/16 :goto_3

    :cond_f
    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_5
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPress()V
    .locals 4

    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPress nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPressAction()V
    .locals 4

    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPressAction nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-void
.end method

.method willCreate()V
    .locals 0

    return-void
.end method
