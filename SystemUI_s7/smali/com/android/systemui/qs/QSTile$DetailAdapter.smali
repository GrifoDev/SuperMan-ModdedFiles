.class public interface abstract Lcom/android/systemui/qs/QSTile$DetailAdapter;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTile$DetailAdapter$ButtonCallback;
    }
.end annotation


# virtual methods
.method public abstract createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getButtonCallback()Lcom/android/systemui/qs/QSTile$DetailAdapter$ButtonCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMetricsCategory()I
.end method

.method public abstract getSettingsIntent()Landroid/content/Intent;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getToggleState()Ljava/lang/Boolean;
.end method

.method public abstract setToggleState(Z)Z
.end method
