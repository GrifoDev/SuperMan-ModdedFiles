.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;
.super Ljava/lang/Object;
.source "PluginLockStarIndicationTextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getIndicationTextView()Landroid/view/View;
.end method

.method public abstract getLockIconView(Ljava/lang/String;)Landroid/view/View;
.end method

.method public abstract setIndicationTextView(Landroid/view/View;)V
.end method

.method public abstract setLockIconView(Ljava/lang/String;Landroid/view/View;)V
.end method
