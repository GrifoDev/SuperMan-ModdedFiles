.class public abstract Lcom/android/dialer/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Logger"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/dialer/logging/Logger;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static logCall(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/dialer/logging/Logger;->getInstance()Lcom/android/dialer/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/dialer/logging/Logger;->logCallImpl(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public static logInteraction(I)V
    .locals 1

    invoke-static {}, Lcom/android/dialer/logging/Logger;->getInstance()Lcom/android/dialer/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/dialer/logging/Logger;->logInteractionImpl(I)V

    :cond_0
    return-void
.end method

.method public static logScreenView(ILandroid/app/Activity;)V
    .locals 5

    invoke-static {}, Lcom/android/dialer/logging/Logger;->getInstance()Lcom/android/dialer/logging/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/dialer/logging/Logger;->logScreenViewImpl(I)V

    :cond_0
    invoke-static {p0}, Lcom/android/dialer/logging/ScreenEvent;->getScreenName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/contacts/commonbind/analytics/AnalyticsUtil;->sendScreenView(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v2, "Logger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown screenType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract logCallImpl(Lcom/android/incallui/Call;)V
.end method

.method public abstract logInteractionImpl(I)V
.end method

.method public abstract logScreenViewImpl(I)V
.end method
