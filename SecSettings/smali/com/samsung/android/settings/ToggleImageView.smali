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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mOnResID:I

    iput v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mOffRexID:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mToggleState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mOnResID:I

    iput v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mOffRexID:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mToggleState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mOnResID:I

    iput v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mOffRexID:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mToggleState:Z

    return-void
.end method


# virtual methods
.method public getToggleState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/ToggleImageView;->mToggleState:Z

    return v0
.end method

.method public setOnToggleListener(Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ToggleImageView;->mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

    return-void
.end method

.method public setToggleRes(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/ToggleImageView;->mOnResID:I

    iput p2, p0, Lcom/samsung/android/settings/ToggleImageView;->mOffRexID:I

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
