.class public Lcom/android/incallui/service/ui/JanskyPopupUI;
.super Lcom/android/incallui/service/ui/PopupUI;
.source "JanskyPopupUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/ui/JanskyPopupUI$JanskyCallback;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mMultiLineIcon:Landroid/widget/ImageView;

.field private mMultiLineIconContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/incallui/service/ui/JanskyPopupUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/ui/JanskyPopupUI;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0
    .param p1, "secCallPopupContainer"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/incallui/service/ui/PopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    .line 44
    return-void
.end method

.method public static checkIsShowMergeforJansky(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 8
    .param p0, "fgCall"    # Lcom/android/incallui/Call;
    .param p1, "ringingCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 114
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    const/4 v4, 0x1

    .line 140
    :cond_0
    :goto_0
    return v4

    .line 118
    :cond_1
    const/4 v4, 0x1

    .line 119
    .local v4, "showMergeOption":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 122
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "activeCallMsisdn":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "ringingCallMsisdn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isNativeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 125
    .local v1, "isNativeLineActiveCall":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isNativeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 127
    .local v2, "isNativeLineRingingCall":Z
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 128
    const/4 v4, 0x0

    .line 139
    :cond_2
    :goto_1
    sget-object v5, Lcom/android/incallui/service/ui/JanskyPopupUI;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsShowMergeforJansky : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    .line 131
    const/4 v4, 0x0

    goto :goto_1

    .line 132
    :cond_4
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 133
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 135
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getLineMSISDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 106
    move-object v0, p0

    .line 107
    .local v0, "msisdn":Ljava/lang/String;
    const-string v1, "jansky_info_for_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    return-object v0
.end method

.method public static putJanskyExtra(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "msisdn"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/incallui/service/ui/JanskyPopupUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageClicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "jansky_msisdn"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_0
    return-void
.end method

.method public static putJanskyExtra(Landroid/os/Bundle;)V
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 99
    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "jansky_msisdn"

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/android/incallui/service/ui/JanskyPopupUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jansky_msisdn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/JanskyPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100205

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mMultiLineIcon:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/JanskyPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100204

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mMultiLineIconContainer:Landroid/view/View;

    .line 52
    :cond_0
    return-void
.end method

.method public updateJanskyIcon()V
    .locals 5

    .prologue
    .line 55
    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isActiveJanskyAccount()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    .line 57
    .local v0, "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    if-nez v0, :cond_1

    .line 71
    .end local v0    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mMultiLineIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mMultiLineIconContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 61
    iget-object v2, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mMultiLineIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v2, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mMultiLineIconContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 68
    .end local v0    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mMultiLineIconContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mMultiLineIconContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateJanskyinfo()V
    .locals 4

    .prologue
    .line 74
    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isActiveJanskyAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/incallui/service/ui/JanskyPopupUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/service/ui/JanskyPopupUI$JanskyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/incallui/service/ui/JanskyPopupUI$JanskyCallback;-><init>(Lcom/android/incallui/service/ui/JanskyPopupUI;Lcom/android/incallui/service/ui/JanskyPopupUI$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->janskyMultiLinestartQuery(Ljava/lang/String;Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;)V

    .line 79
    :cond_0
    return-void
.end method
