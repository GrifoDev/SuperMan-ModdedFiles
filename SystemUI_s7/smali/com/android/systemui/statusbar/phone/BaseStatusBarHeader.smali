.class public abstract Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "BaseStatusBarHeader.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public abstract getCollapsedHeight()I
.end method

.method public abstract onEmergencyModeChanged()V
.end method

.method public abstract setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
.end method

.method public abstract setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
.end method

.method public abstract setExpanded(Z)V
.end method

.method public abstract setExpansion(F)V
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
.end method

.method public abstract updateEverything()V
.end method
