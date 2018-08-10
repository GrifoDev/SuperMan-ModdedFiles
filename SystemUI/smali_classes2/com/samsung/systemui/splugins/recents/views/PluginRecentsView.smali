.class public interface abstract Lcom/samsung/systemui/splugins/recents/views/PluginRecentsView;
.super Ljava/lang/Object;
.source "PluginRecentsView.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation


# virtual methods
.method public abstract getCloseAllButton()Landroid/widget/Button;
.end method

.method public abstract getEmptyView()Landroid/view/View;
.end method

.method public abstract getLockEditCancelButton()Landroid/widget/Button;
.end method

.method public abstract getLockEditDoneButton()Landroid/widget/Button;
.end method

.method public abstract getTaskRect(Lcom/samsung/systemui/splugins/recents/views/PluginTaskView;)Landroid/graphics/Rect;
.end method

.method public abstract getTaskStackView()Lcom/samsung/systemui/splugins/recents/views/PluginTaskStackView;
.end method

.method public abstract getToggleButton()Landroid/widget/Button;
.end method

.method public abstract launchFocusedTask(I)Z
.end method
