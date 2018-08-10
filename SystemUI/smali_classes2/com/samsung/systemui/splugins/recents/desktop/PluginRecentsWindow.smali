.class public interface abstract Lcom/samsung/systemui/splugins/recents/desktop/PluginRecentsWindow;
.super Ljava/lang/Object;
.source "PluginRecentsWindow.java"


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

.method public abstract getRecentsWindowView()Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowView;
.end method
