.class public interface abstract Lcom/android/incallui/AgifPresenter$AgifUi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AgifPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AgifUi"
.end annotation


# virtual methods
.method public abstract addAgifPage()V
.end method

.method public abstract cancelSentStickerToast()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isShowAgifContainer()Z
.end method

.method public abstract isShowAgifList()Z
.end method

.method public abstract isShowGifButton()Z
.end method

.method public abstract onAgifViewStateChanged(Z)V
.end method

.method public abstract onSelectAgifContents(Landroid/net/Uri;)V
.end method

.method public abstract onSmartInfoChanged()V
.end method

.method public abstract refreshAgifPage()V
.end method

.method public abstract refreshRecommendPage()V
.end method

.method public abstract selectAgifPage(I)V
.end method

.method public abstract setEnableSlidingTrayIcon(Z)V
.end method

.method public abstract setSentAgifUri(Landroid/net/Uri;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract showAgifList(Z)V
.end method

.method public abstract startOutgoingCallAnimation()V
.end method

.method public abstract updateAgifButtons()V
.end method

.method public abstract updateAgifListSubText(Ljava/lang/String;)V
.end method

.method public abstract updateAgifListText(I)V
.end method

.method public abstract updateButtonColor(Z)V
.end method
