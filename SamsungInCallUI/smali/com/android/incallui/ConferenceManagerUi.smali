.class public interface abstract Lcom/android/incallui/ConferenceManagerUi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/Ui;


# virtual methods
.method public abstract displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZ)V
.end method

.method public abstract displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;ZZI)V
.end method

.method public abstract displayConferenceDisconnectingAnimation(I)V
.end method

.method public abstract isFragmentVisible()Z
.end method

.method public abstract refreshCall(Lcom/android/incallui/Call;)V
.end method

.method public abstract resetConferenceListAlpha()V
.end method

.method public abstract setConferenceListAlpha(IF)V
.end method

.method public abstract setPrimaryCallElapsedTime(ILjava/lang/String;)V
.end method

.method public abstract setRowVisible(IZ)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setupEndButtonForRow(IZ)V
.end method

.method public abstract setupSeparateButtonForRow(IZ)V
.end method

.method public abstract update(Landroid/content/Context;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation
.end method
