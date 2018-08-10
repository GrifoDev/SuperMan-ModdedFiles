.class public abstract Lcom/android/settings/widget/SwitchWidgetController;
.super Ljava/lang/Object;
.source "SwitchWidgetController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
    }
.end annotation


# instance fields
.field protected mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isChecked()Z
.end method

.method public abstract setChecked(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    return-void
.end method

.method public setupView()V
    .locals 0

    return-void
.end method

.method public abstract startListening()V
.end method

.method public abstract stopListening()V
.end method

.method public teardownView()V
    .locals 0

    return-void
.end method
