.class public Lcom/samsung/android/settings/ToggleImageView;
.super Landroid/widget/ImageView;
.source "ToggleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;
    }
.end annotation


# instance fields
.field private mOffRexID:I

.field private mOnResID:I

.field private mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

.field private mToggleState:Z


# virtual methods
.method public setOnToggleListener(Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ToggleImageView;->mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

    return-void
.end method

.method public updateToggleState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/settings/ToggleImageView;->mToggleState:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mToggleState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mOnResID:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ToggleImageView;->setImageResource(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mOffRexID:I

    goto :goto_0
.end method
