.class public abstract Lcom/android/contacts/common/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Logger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInstance()Lcom/android/contacts/common/logging/Logger;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/android/contacts/commonbind/ObjectFactory;->getLogger()Lcom/android/contacts/common/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static logScreenView(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "screenType"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/logging/Logger;->logScreenView(Landroid/app/Activity;II)V

    .line 44
    return-void
.end method

.method public static logScreenView(Landroid/app/Activity;II)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "screenType"    # I
    .param p2, "previousScreenType"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/android/contacts/common/logging/Logger;->getInstance()Lcom/android/contacts/common/logging/Logger;

    move-result-object v0

    .line 51
    .local v0, "logger":Lcom/android/contacts/common/logging/Logger;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/logging/Logger;->logScreenViewImpl(II)V

    .line 56
    :cond_0
    invoke-static {p2}, Lcom/android/contacts/common/logging/ScreenEvent$ScreenType;->getFriendlyName(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_1
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p0, v1}, Lcom/android/contacts/commonbind/analytics/AnalyticsUtil;->sendScreenView(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static logSearchEvent(Lcom/android/contacts/common/logging/SearchState;)V
    .locals 1
    .param p0, "searchState"    # Lcom/android/contacts/common/logging/SearchState;

    .prologue
    .line 67
    invoke-static {}, Lcom/android/contacts/common/logging/Logger;->getInstance()Lcom/android/contacts/common/logging/Logger;

    move-result-object v0

    .line 68
    .local v0, "logger":Lcom/android/contacts/common/logging/Logger;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p0}, Lcom/android/contacts/common/logging/Logger;->logSearchEventImpl(Lcom/android/contacts/common/logging/SearchState;)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract logScreenViewImpl(II)V
.end method

.method public abstract logSearchEventImpl(Lcom/android/contacts/common/logging/SearchState;)V
.end method
