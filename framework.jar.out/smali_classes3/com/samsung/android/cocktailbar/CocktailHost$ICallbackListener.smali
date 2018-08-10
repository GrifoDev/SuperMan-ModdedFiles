.class public interface abstract Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
.super Ljava/lang/Object;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallbackListener"
.end annotation


# virtual methods
.method public abstract onChangeVisibleEdgeService(ZI)V
.end method

.method public abstract onCloseCocktail(III)V
.end method

.method public abstract onNotifyKeyguardState(ZI)V
.end method

.method public abstract onNotifyWakeUpModeState(ZII)V
.end method

.method public abstract onPartiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
.end method

.method public abstract onPartiallyUpdateHelpView(ILandroid/widget/RemoteViews;I)V
.end method

.method public abstract onRemoveCocktail(II)V
.end method

.method public abstract onSendExtraDataToCocktailBar(Landroid/os/Bundle;I)V
.end method

.method public abstract onSetDisableTickerView(II)V
.end method

.method public abstract onSetPullToRefresh(IILandroid/app/PendingIntent;)V
.end method

.method public abstract onShowCocktail(II)V
.end method

.method public abstract onSwitchDefaultCocktail(I)V
.end method

.method public abstract onUpdateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
.end method

.method public abstract onUpdateToolLauncher(I)V
.end method

.method public abstract onViewDataChanged(III)V
.end method
